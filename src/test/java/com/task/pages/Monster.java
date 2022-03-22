package com.task.pages;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Monster extends BasePage{

    @FindBy(xpath = "(//input)[4]")
    public WebElement location;

    @FindBy(xpath = "(//input)[3]")
    public WebElement jobTitle;



}
