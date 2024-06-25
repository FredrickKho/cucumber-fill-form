
import cucumber.runtime.SerenityObjectFactory;
import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        monochrome = true,
        objectFactory = SerenityObjectFactory.class,
//        plugin = {"pretty","json:target/cucumber.json"} ,
        features = "src/test/resources/features",
        glue = {
                "steps"
        },
        tags = "@LMS",
        stepNotifications = true
)
public class CucumberOption {

}
