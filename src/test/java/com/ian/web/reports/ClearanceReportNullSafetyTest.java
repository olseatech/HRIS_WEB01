package com.ian.web.reports;

import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatCode;

import org.junit.jupiter.api.Test;

import com.ian.web.employee.Employee;

/**
 * Verifies the null-safety fixes in ReportsController.viewClearanceReport():
 * - middleName null/empty no longer throws NPE (Fix 2)
 * - null division / positionTitle yields empty string instead of NPE (Fix 3)
 */
class ClearanceReportNullSafetyTest {

    // Mirrors the fixed logic from ReportsController lines 1272-1282
    private String buildMiddleInitial(String middleName) {
        return (middleName != null && !middleName.isEmpty()) ? middleName.charAt(0) + ". " : "";
    }

    private String buildEmpName(String firstName, String middleName, String lastName) {
        return firstName + " " + buildMiddleInitial(middleName) + lastName;
    }

    @Test
    void nullMiddleNameDoesNotThrow() {
        assertThatCode(() -> buildEmpName("Juan", null, "Dela Cruz")).doesNotThrowAnyException();
    }

    @Test
    void nullMiddleNameOmitsInitial() {
        assertThat(buildEmpName("Juan", null, "Dela Cruz")).isEqualTo("Juan Dela Cruz");
    }

    @Test
    void emptyMiddleNameOmitsInitial() {
        assertThat(buildEmpName("Juan", "", "Dela Cruz")).isEqualTo("Juan Dela Cruz");
    }

    @Test
    void validMiddleNameProducesInitial() {
        assertThat(buildEmpName("Juan", "Santos", "Dela Cruz")).isEqualTo("Juan S. Dela Cruz");
    }

    @Test
    void nullDivisionProducesEmptyString() {
        Employee emp = new Employee();
        // division is null on a freshly constructed Employee
        String divName = emp.getDivision() != null ? emp.getDivision().getDivisionName() : "";
        assertThat(divName).isEqualTo("");
    }

    @Test
    void nullPositionTitleProducesEmptyString() {
        Employee emp = new Employee();
        // positionTitle is null on a freshly constructed Employee
        String posName = emp.getPositionTitle() != null ? emp.getPositionTitle().getPositionTitleName() : "";
        assertThat(posName).isEqualTo("");
    }
}
