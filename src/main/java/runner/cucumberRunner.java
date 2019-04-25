package runner;
import java.io.File;

import org.junit.After;
import org.junit.runner.RunWith;
import com.cucumber.listener.Reporter;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;


@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/feature",
        glue={"src/test/StepDefinitions"},plugin = { "pretty", "json:target/cucumber-reports/Cucumber.json",
       		 "junit:target/cucumber-reports/Cucumber.xml",
    		 "html:target/cucumber-reports","com.cucumber.listener.ExtentCucumberFormatter:target/cucumber-reports/report.html"},
		monochrome=true)
		//tags= {"@GetPayment"})

public class cucumberRunner {
	@After
	public void cucumberReport(){
		Reporter.loadXMLConfig(new File("src/main/resources/extent-config.xml"));
	 }
}
