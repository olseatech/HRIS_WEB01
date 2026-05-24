package com.ian.web.employee.clearance;

import static org.assertj.core.api.Assertions.assertThat;
import static org.springframework.security.test.web.servlet.request.SecurityMockMvcRequestPostProcessors.csrf;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import java.time.LocalDate;
import java.util.List;

import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.mock.web.MockHttpSession;
import org.springframework.security.test.context.support.WithMockUser;
import org.springframework.test.web.servlet.MockMvc;

import com.ian.web.employee.Employee;

/**
 * Integration tests for clearance form submission and approve/disapprove flow.
 * Requires the application database to be running (dev profile is active by default).
 */
@SpringBootTest
@AutoConfigureMockMvc
class ClearanceControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ClearanceRepository clearanceRepository;

    private Long createdClearanceId;

    @AfterEach
    void cleanup() {
        if (createdClearanceId != null) {
            clearanceRepository.deleteById(createdClearanceId);
            createdClearanceId = null;
        }
    }

    @Test
    @WithMockUser(username = "admin", roles = {"ADMIN"})
    void submitNewClearanceSetsSubmittedStatusAndTransDate() throws Exception {
        long beforeCount = clearanceRepository.findByEmployeeId(3L).size();

        mockMvc.perform(post("/addMyClearance")
                .with(csrf())
                .param("id", "0")
                .param("employee.id", "3")
                .param("employee.empHashCode", "empHklfn35Rgnd456556rfgngdfg12")
                .param("purpose", "RESIGNATION")
                .param("addressTo", "CITY GOVERNMENT OF MANILA")
                .param("effectiveDate", "2026-06-01"))
                .andExpect(status().is3xxRedirection());

        List<Clearance> allForEmp = clearanceRepository.findByEmployeeId(3L);
        assertThat(allForEmp).hasSizeGreaterThan((int) beforeCount);

        Clearance newest = allForEmp.stream()
                .filter(c -> "RESIGNATION".equals(c.getPurpose()))
                .reduce((a, b) -> b)
                .orElseThrow(() -> new AssertionError("No RESIGNATION clearance found after POST"));

        assertThat(newest.getStatus()).isEqualTo("SUBMITTED");
        assertThat(newest.getTransDate()).isNotNull();
        createdClearanceId = newest.getId();
    }

    @Test
    @WithMockUser(username = "admin", roles = {"ADMIN"})
    void disapproveClearanceEndpointUpdatesStatus() throws Exception {
        // setup: persist a clearance directly so we have a known ID
        Clearance c = new Clearance();
        Employee emp = new Employee();
        emp.setId(1L);
        c.setEmployee(emp);
        c.setPurpose("TRANSFER");
        c.setAddressTo("CITY GOVERNMENT OF MANILA");
        c.setStatus("SUBMITTED");
        c.setTransDate(LocalDate.now());
        c.setEffectiveDate(LocalDate.now().plusMonths(1));
        Clearance saved = clearanceRepository.save(c);
        createdClearanceId = saved.getId();

        MockHttpSession session = new MockHttpSession();
        Employee actor = new Employee();
        actor.setFirstName("Ian");
        actor.setLastName("Orozco");
        session.setAttribute("actorObj", actor);

        mockMvc.perform(post("/process-clearance/" + saved.getId() + "/DISAPPROVED")
                .session(session)
                .with(csrf()))
                .andExpect(status().isOk());

        Clearance updated = clearanceRepository.findById(saved.getId()).orElseThrow();
        assertThat(updated.getStatus()).isEqualTo("DISAPPROVED");
    }

    @Test
    @WithMockUser(username = "admin", roles = {"ADMIN"})
    void approveClearanceEndpointUpdatesStatus() throws Exception {
        Clearance c = new Clearance();
        Employee emp = new Employee();
        emp.setId(1L);
        c.setEmployee(emp);
        c.setPurpose("RETIREMENT");
        c.setAddressTo("CITY GOVERNMENT OF MANILA");
        c.setStatus("SUBMITTED");
        c.setTransDate(LocalDate.now());
        c.setEffectiveDate(LocalDate.now().plusMonths(2));
        Clearance saved = clearanceRepository.save(c);
        createdClearanceId = saved.getId();

        MockHttpSession session = new MockHttpSession();
        Employee actor = new Employee();
        actor.setFirstName("Ian");
        actor.setLastName("Orozco");
        session.setAttribute("actorObj", actor);

        mockMvc.perform(post("/process-clearance/" + saved.getId() + "/APPROVED")
                .session(session)
                .with(csrf()))
                .andExpect(status().isOk());

        Clearance updated = clearanceRepository.findById(saved.getId()).orElseThrow();
        assertThat(updated.getStatus()).isEqualTo("APPROVED");
    }
}
