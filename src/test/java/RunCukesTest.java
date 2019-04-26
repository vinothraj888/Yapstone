import java.io.File;

import org.junit.After;
import org.junit.runner.RunWith;

import com.cucumber.listener.Reporter;

import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "feature",
        glue={"src/test/StepDefinitions"},plugin = { "pretty",
       		 "junit:target/cucumber-reports/Cucumber.xml","json:target/cucumber-reports/Cucumber.json"},
		monochrome=true)
		//tags= {"@GetPayment"})
public class RunCukesTest {
	
	@After
	public void cucumberReport(){
		Reporter.loadXMLConfig(new File("src/main/resources/extent-config.xml"));
	 }

}
