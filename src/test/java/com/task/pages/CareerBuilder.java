package com.task.pages;

import com.task.utilities.BrowserUtils;
import com.task.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.FindBy;

public class CareerBuilder extends BasePage {

    @FindBy(xpath = "//div[normalize-space()='Date Posted']")
    public WebElement dateFilterButton;

    public int getTotalJobsCount() {
        try {
            BrowserUtils.waitFor(3);
            String text = Driver.get().findElement(By.xpath("//h1")).getText();
            int end = text.indexOf(" ");
            return Integer.parseInt(text.substring(0, end).replace(",", "").replace(" ", ""));
        } catch (NoSuchElementException | NumberFormatException e) {
            return 0;
        }

    }

    public void selectDateFilter(String value) {
        BrowserUtils.waitFor(2);
        WebElement date = Driver.get().findElement(By.cssSelector("[aria-label=\"Date posted filter\"]"));
        Actions actions = new Actions(Driver.get());
        actions.moveToElement(date).perform();
        BrowserUtils.waitFor(2);
        BrowserUtils.clickWithJS(Driver.get().findElement(By.xpath("//*[@class='filter-option']//*[text()='" + value + "']")));
        BrowserUtils.waitFor(2);
    }


}
