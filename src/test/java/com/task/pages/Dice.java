package com.task.pages;

import com.task.utilities.Driver;
import org.openqa.selenium.By;

public class Dice extends BasePage {

    public int getTotalJobsCount() {
        try {
            String text = Driver.get().findElement(By.cssSelector("#totalJobCount")).getText().trim();
            System.out.println("dice jobs: " + text);
            return Integer.parseInt(text.replace(",", ""));
        } catch (Exception e) {
            return 0;
        }
    }
}
