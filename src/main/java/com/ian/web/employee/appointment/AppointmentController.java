package com.ian.web.employee.appointment;

import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.ian.web.common.model.UXMessage;
import com.ian.web.employee.Employee;
import com.ian.web.employee.EmployeeRepository;
import com.ian.web.systemsettings.division.DivisionRepository;
import com.ian.web.systemsettings.employee_status.EmployeeStatusRepository;
import com.ian.web.systemsettings.position_title.PositionTitleRepository;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AppointmentController {

	private final EmployeeRepository employeeRepository;
	private final AppointmentRepository appointmentRepository;
	private final PositionTitleRepository positionTitleRepository;
	private final EmployeeStatusRepository employeeStatusRepository;
	private final DivisionRepository divisionRepository;

	@GetMapping("/appointments")
	public String viewAppointments(Model model) {
		List<Employee> employeeList = employeeRepository.findAll();
		model.addAttribute("employeeList", employeeList);
		return "employee/appointments/employee-list-appointments";
	}

	@GetMapping("/appointments/{employeeId}/{empHashCode}")
	public String viewEmployeeAppointments(Model model, @PathVariable long employeeId, @PathVariable String empHashCode) {
		populateAppointmentModel(model, employeeId, empHashCode, "HRADMIN");
		return "employee/appointments/employee-appointment-record";
	}

	@GetMapping("/my-appointments/{employeeId}/{empHashCode}")
	public String viewMyAppointments(Model model, @PathVariable long employeeId, @PathVariable String empHashCode) {
		populateAppointmentModel(model, employeeId, empHashCode, "EMPLOYEE");
		return "employee/appointments/employee-appointment-record";
	}

	@PostMapping({"/addAppointment", "/updateAppointment"})
	public String saveAppointment(Appointment appointment, final RedirectAttributes redirect) {
		appointmentRepository.save(appointment);
		redirect.addFlashAttribute("msg", new UXMessage("EDIT-SUCCESS", "Record Successfully Saved."));
		return "redirect:/appointments/" + appointment.getEmployee().getId()
				+ "/" + appointment.getEmployee().getEmpHashCode();
	}

	@GetMapping("/deleteAppointment/{id}")
	@Transactional
	public String deleteAppointment(@PathVariable long id, final RedirectAttributes redirect) {
		Appointment appt = appointmentRepository.findById(id).orElseThrow();
		long employeeId = appt.getEmployee().getId();
		String hashCode = appt.getEmployee().getEmpHashCode();
		appointmentRepository.deleteById(id);
		redirect.addFlashAttribute("msg", new UXMessage("EDIT-SUCCESS", "Record Successfully Deleted."));
		return "redirect:/appointments/" + employeeId + "/" + hashCode;
	}

	private void populateAppointmentModel(Model model, long employeeId, String empHashCode, String showMode) {
		Optional<Employee> optional = employeeRepository.findByIdAndEmpHashCode(employeeId, empHashCode);
		UXMessage msg = new UXMessage();
		if (!optional.isPresent()) {
			msg.setCode("EMP-NOT-FOUND");
			msg.setMessage("Employee Not Found. You will be redirected to the dashboard.");
			model.addAttribute("msg", msg);
		}

		Employee employee = optional.orElseGet(Employee::new);
		model.addAttribute("employee", employee);

		Appointment appointment = new Appointment();
		appointment.setEmployee(employee);
		model.addAttribute("appointment", appointment);
		model.addAttribute("showMode", showMode);

		model.addAttribute("employeeStatusList", employeeStatusRepository.findAll());
		model.addAttribute("positionTitleList", positionTitleRepository.findAllByOrderByPositionTitleNameAsc());
		model.addAttribute("appointmentRecordList", appointmentRepository.findByEmployeeId(employeeId));
	}

}
