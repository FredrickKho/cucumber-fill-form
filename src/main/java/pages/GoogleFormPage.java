package pages;

import lombok.Getter;
import net.serenitybdd.core.annotations.findby.By;
import net.serenitybdd.core.annotations.findby.FindBy;
import net.serenitybdd.core.pages.PageObject;
import net.serenitybdd.core.pages.WebElementFacade;
import net.serenitybdd.screenplay.Actor;
import net.serenitybdd.screenplay.targets.Target;
import org.springframework.stereotype.Component;

import java.util.List;

@Getter
@Component("pages.GoogleFormPage")
public class GoogleFormPage extends PageObject {
    @FindBy(xpath = "//span[contains(text(),'Berikutnya')]")
    private WebElementFacade berikutnya;

    @FindBy(xpath = "//span[contains(text(),'Kirim')]")
    private WebElementFacade kirim;
}
