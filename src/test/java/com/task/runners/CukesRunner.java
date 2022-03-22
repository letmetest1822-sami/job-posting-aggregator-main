package com.task.runners;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        strict = true,
        plugin = {"json:target/cucumber.json",
                "html:target/default-html-reports",
                "rerun:target/rerun.txt",
                "pretty"},
        features = "src/test/resources/features/",
        glue = "com/task/step_definitions",
        dryRun = false,
        tags = "@all"

)
public class CukesRunner {

}
