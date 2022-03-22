package com.task.pages;

import com.task.utilities.BrowserUtils;
import com.task.utilities.Driver;
import org.openqa.selenium.*;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public abstract class BasePage {

    @FindBy(xpath = "(//input)[1]")
    public WebElement jobTitle;

    @FindBy(xpath = "(//input)[2]")
    public WebElement location;


    public BasePage() {
        PageFactory.initElements(Driver.get(), this);
    }

    /**
     * @param keyword: any keyword in the placeholder
     * @param value:   the desired keys to be sent
     */

    public void sendKeys(String keyword, String value) {
        try {
            Driver.get().findElement(By.xpath("//input[contains(@placeholder,'" + keyword + "')]")).sendKeys(value);
        } catch (ElementNotInteractableException e) {
            ((JavascriptExecutor) Driver.get()).executeScript("document.getElementById('elementID').setAttribute('value', 'new value for element')");
        }

    }


    public void clickButton(String buttonName) {
        try {
            try {

                Driver.get().findElement(By.xpath("//button[normalize-space()='" + buttonName + "']")).click();
            } catch (ElementClickInterceptedException e) {
                BrowserUtils.clickWithJS(Driver.get().findElement(By.xpath("//button[normalize-space()='" + buttonName + "']")));
            }
        } catch (NoSuchElementException e) {
            try {
                Driver.get().findElement(By.xpath("//a[normalize-space()='" + buttonName + "']")).click();
            } catch (ElementClickInterceptedException c) {
                BrowserUtils.clickWithJS(Driver.get().findElement(By.xpath("//a[normalize-space()='" + buttonName + "']")));
            }
        }
    }

    public int getTotalJobsForIndeed() {
        return Integer.parseInt(Driver.get().findElement(By.cssSelector("#totalJobCount")).getText().replace(",", ""));
    }


    public Integer getTotalJobs(String platform) {

        switch (platform) {
            case "dice":
                return new Dice().getTotalJobsCount();
            case "indeed":
                return new Indeed().getTotalJobsCount();
            case "careerBuilder":
                return new CareerBuilder().getTotalJobsCount();
            case "zip":
                return new Zip().getTotalJobsCount();
            default:
                return -1;

        }

    }


}
