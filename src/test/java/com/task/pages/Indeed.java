package com.task.pages;

import com.task.utilities.BrowserUtils;
import com.task.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;

public class Indeed extends BasePage {

    public int getTotalJobsCount() {
        try {
            String text = Driver.get().findElement(By.cssSelector("div#searchCountPages")).getText();
            int begin = text.indexOf("of") + 3;
            int end = text.indexOf("jobs") - 1;
            return Integer.parseInt(text.substring(begin, end).replace(",", ""));
        } catch (NoSuchElementException e) {
            return 0;
        }
    }


    public void selectDateFilter(String value) {
        try {
            BrowserUtils.waitFor(3);
            Driver.get().findElement(By.id("filter-dateposted")).click();
            BrowserUtils.waitFor(3);
            Driver.get().findElement(By.xpath("//*[@id='filter-dateposted-menu']//*[text()='"+value+"']")).click();
            BrowserUtils.waitFor(3);
        } catch (NoSuchElementException e) {
            e.printStackTrace();
        }
    }
}
