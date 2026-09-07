package com.ian.web.systemsettings.common;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

import org.junit.jupiter.api.Test;
import org.springframework.dao.DataIntegrityViolationException;

import com.ian.web.common.model.UXMessage;

class SettingsDeleteUtilTest {

    @Test
    void tryDeleteReturnsSuccessWhenDeleteActionCompletes() {
        UXMessage result = SettingsDeleteUtil.tryDelete(() -> { }, "Office");

        assertEquals("SUCCESS", result.getCode());
        assertEquals("Office deleted successfully.", result.getMessage());
    }

    @Test
    void tryDeleteReturnsErrorWhenDeleteActionViolatesDataIntegrity() {
        UXMessage result = SettingsDeleteUtil.tryDelete(() -> {
            throw new DataIntegrityViolationException("still referenced");
        }, "Office");

        assertEquals("ERROR", result.getCode());
        assertTrue(result.getMessage().contains("Cannot delete this Office"));
    }
}
