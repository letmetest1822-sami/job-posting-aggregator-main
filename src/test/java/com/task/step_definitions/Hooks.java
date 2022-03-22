package com.task.step_definitions;

import com.task.utilities.BrowserUtils;
import com.task.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;
import io.cucumber.java.Scenario;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import java.util.OptionalDouble;
import java.util.concurrent.TimeUnit;

public class Hooks extends Thread {




    @Before
    public void setUp(){
        Driver.get().manage().window().maximize();
        Driver.get().manage().timeouts().implicitlyWait(4, TimeUnit.SECONDS);

    }

    @After
    public void tearDown(Scenario scenario ) throws InterruptedException {
        if(scenario.isFailed()) {
            final byte[] screenshot = ((TakesScreenshot) Driver.get()).getScreenshotAs(OutputType.BYTES);
            scenario.attach(screenshot, "image.png", "screenshot");
        }

        Driver.closeDriver();

    }



}
