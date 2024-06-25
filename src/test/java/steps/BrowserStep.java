package steps;


import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
//import io.github.bonigarcia.wdm.WebDriverManager;
import io.cucumber.java.en_old.Ac;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.actions.Click;
import net.serenitybdd.screenplay.actions.Enter;
import net.serenitybdd.screenplay.actions.Open;
import net.serenitybdd.screenplay.annotations.CastMember;
import net.serenitybdd.screenplay.targets.Target;
import net.thucydides.core.steps.ScenarioSteps;
import org.openqa.selenium.*;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import pages.GoogleFormPage;

import java.util.List;
import java.util.Map;
import java.util.Random;

@Component("steps.BrowserStep")
public class BrowserStep extends ScenarioSteps {
    static WebDriver driver;

    @CastMember(name = "fred")
    Actor actor;

    @Autowired
    private GoogleFormPage googleFormPage;

    public void setCurrentDriver(String browser) {
        switch (browser) {
            case "firefox":
                driver = new FirefoxDriver();
                break;
            case "chrome":
                //                WebDriverManager.chromedriver().setup();
                //                ChromeOptions options = new ChromeOptions();
                //                options.addArguments("start-maximized");
                //                driver = new ChromeDriver(options);
                break;
            default:
                throw new RuntimeException("Unsupported webdriver: " + browser);
        }
    }

    public void pageScrollToBottom() {
        driver.findElement(By.cssSelector("body")).sendKeys(Keys.CONTROL, Keys.END);
    }

    public void doWait(int second) {
        int flag = 0;
        while (true) {
            try {
                Thread.sleep(1000);
            } catch (InterruptedException e) {
                throw new RuntimeException(e);
            }
            flag += 1;
            System.out.println(flag+" second before filling form");
            if(flag == second){
                break;
            }
        }

    }
    public int randomSecond(int second){
        Random random = new Random();
        return random.nextInt(second) + 1 ;
    }
    @Given("^user open (.*) browser with url (.*)$")
    public void openBrorwserWithUrl(String browser, String url) {
        //        System.out.println(googleFormPage);
//        doWait(randomSecond(600));
        doWait(600);
        actor.attemptsTo(Open.url(url));
        //        googleFormPage.openAt(url);
        //       setCurrentDriver(browser);
        //       driver.get(url);
    }

    @And("^user click berikutnya button$")
    public void userClickButtonWithTextBerikutnya() {
        //        pageScrollToBottom();
        googleFormPage.getBerikutnya().waitUntilVisible();
        googleFormPage.getBerikutnya().click();
        //        driver.findElement(By.xpath("//span[contains(text(),'Berikutnya')]")).click();
    }

    @And("^user click kirim button$")
    public void userClickKirimButton() {
        //        pageScrollToBottom();
        googleFormPage.getKirim().waitUntilVisible();
        googleFormPage.getKirim().click();
        //        driver.findElement(By.xpath("//span[contains(text(),'Berikutnya')]")).click();
    }

    @And("user fills the form based on given data:")
    public void userFillsTheFormBasedOnGivenData(DataTable dtable) {
        Map<String, String> data = dtable.asMap(String.class, String.class);
        //Name
        actor.attemptsTo(
                //Name
                Enter.theValue(data.get("name"))
                        .into(Target.the("field name")
                                .located(By.xpath("//div[@role=\"listitem\"][2]//input"))),
                //Gender
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/div["
                                + data.get("gender") + "]//div[@role=\"radio\"]")),
                //Umur
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/div["
                                + data.get("umur") + "]//div[@role=\"radio\"]")),
                //Pendidikan Terakhir
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/div["
                                + data.get("pendidikan") + "]//div[@role=\"radio\"]")),
                //Pemasukan
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/div["
                                + data.get("pemasukan") + "]//div[@role=\"radio\"]")));

        googleFormPage.getBerikutnya().click();

        //        doWait(1000);



        if (data.get("umur").equals("1") || data.get("umur").equals("3")) {
            //            googleFormPage.getKirim().waitUntilVisible();
            //            googleFormPage.getKirim().click();
        } else {
            actor.attemptsTo(
                    //Domisili
                    Click.on(By.xpath(
                            "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/div["
                                    + data.get("domisili") + "]//div[@role=\"radio\"]")));

            googleFormPage.getBerikutnya().click();

            if (data.get("domisili").equals("2")) {
                //                googleFormPage.getKirim().waitUntilVisible();
                //                googleFormPage.getKirim().click();
            } else {
                actor.attemptsTo(
                        //Pernah belanja
                        Click.on(By.xpath(
                                "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/div["
                                        + data.get("pernahBelanja") + "]//div[@role=\"radio\"]")),
                        //seringBelanja
                        Click.on(By.xpath(
                                "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/div["
                                        + data.get("seringBelanja") + "]//div[@role=\"radio\"]")),
                        //pengeluaran
                        Click.on(By.xpath(
                                "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/div["
                                        + data.get("pengeluaran") + "]//div[@role=\"radio\"]")));

                //List E-commerce
                List<String> listEcommerce = List.of(data.get("eCommerce").split(";"));
                for (int i = 0; i < listEcommerce.size(); i++) {
                    actor.attemptsTo(Click.on(By.xpath(
                            "//div[@role=\"listitem\"][3]//div[@role=\"listitem\"]["
                                    + listEcommerce.get(i) + "]//div[@role=\"checkbox\"]")));
                }

                googleFormPage.getBerikutnya().click();

                if (data.get("pernahBelanja").equals("2")) {
                    //                    googleFormPage.getKirim().waitUntilVisible();
                    //                    googleFormPage.getKirim().click();
                } else {
                    //promotion
                    actor.attemptsTo(Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-1") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-2") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-3") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-4") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-5") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][7]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-6") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][8]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-7") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][9]//span[@role=\"presentation\"]/div/label["
                                            + data.get("promo-8") + "]//div[@role=\"radio\"]")));
                    googleFormPage.getBerikutnya().click();

                    //Competitive Price
                    actor.attemptsTo(Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/label["
                                            + data.get("price-1") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                            + data.get("price-2") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                            + data.get("price-3") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                            + data.get("price-4") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                            + data.get("price-5") + "]//div[@role=\"radio\"]")));
                    googleFormPage.getBerikutnya().click();

                    //Product Quality
                    actor.attemptsTo(Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-1") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-2") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-3") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-4") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-5") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][7]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-6") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][8]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-7") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][9]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-8") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][10]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-9") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][11]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-10") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][12]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-11") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][13]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-12") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][14]//span[@role=\"presentation\"]/div/label["
                                            + data.get("product-13") + "]//div[@role=\"radio\"]")));
                    googleFormPage.getBerikutnya().click();

                    //Live Streaming
                    actor.attemptsTo(Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-1") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-2") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-3") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-4") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-5") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][7]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-6") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][8]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-7") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][9]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-8") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][10]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-9") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][11]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-10") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][12]//span[@role=\"presentation\"]/div/label["
                                            + data.get("live-11") + "]//div[@role=\"radio\"]")));
                    googleFormPage.getBerikutnya().click();

                    //Buying Decision
                    actor.attemptsTo(Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-1") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-2") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-3") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-4") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-5") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][7]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-6") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][8]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-7") + "]//div[@role=\"radio\"]")),
                            Click.on(By.xpath(
                                    "//div[@role=\"listitem\"][9]//span[@role=\"presentation\"]/div/label["
                                            + data.get("buy-8") + "]//div[@role=\"radio\"]")));
                    doWait(2000);
                    //                    googleFormPage.getBerikutnya().click();
                    googleFormPage.getKirim().waitUntilVisible();
                    googleFormPage.getKirim().click();
                }
            }
        }
    }

    @And("user fills the lms form based on given data:")
    public void userFillsTheLMSFormBasedOnGivenData(DataTable dtable) {
        Map<String, String> data = dtable.asMap(String.class, String.class);
//        doWait(randomSecond(120));
        actor.attemptsTo(Click.on(By.xpath(
                        "//div[@role=\"listitem\"][1]//span[@role=\"presentation\"]/div/label[" + data.get(
                                "time-1") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][2]//span[@role=\"presentation\"]/div/div["
                                + data.get("time-2") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][3]//span[@role=\"presentation\"]/div/label["
                                + data.get("speed-1") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][4]//span[@role=\"presentation\"]/div/label["
                                + data.get("speed-2") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][5]//span[@role=\"presentation\"]/div/label["
                                + data.get("error-1") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][6]//span[@role=\"presentation\"]/div/label["
                                + data.get("error-2") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][7]//span[@role=\"presentation\"]/div/div["
                                + data.get("retention") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][8]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-1") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][9]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-2") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][10]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-3") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][11]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-4") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][12]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-5") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][13]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-6") + "]//div[@role=\"radio\"]")),
                Click.on(By.xpath(
                        "//div[@role=\"listitem\"][14]//span[@role=\"presentation\"]/div/label["
                                + data.get("satisfaction-7") + "]//div[@role=\"radio\"]")));
        googleFormPage.getKirim().click();
    }
}
