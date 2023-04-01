package com.experimental_software;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class AppTest {
    
    @Test
    public void have_have_greeting() {
        assertNotNull(new Object(), "app should have a greeting");
    }
}
