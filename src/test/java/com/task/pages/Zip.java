package com.task.pages;

import com.task.utilities.BrowserUtils;
import com.task.utilities.Driver;
import org.openqa.selenium.By;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.support.ui.Select;

public class Zip extends BasePage {

    public int getTotalJobsCount() {
        try {
            BrowserUtils.waitFor(2);
            String text = Driver.get().findElement(By.xpath("//h1")).getText().trim();
            System.out.println("total jobs: " + text);
            int end = text.indexOf("+");
            if (end > 0) {
                return Integer.parseInt(text.substring(0, end).replace(",", ""));
            }
            return 0;
        } catch (NoSuchElementException | NumberFormatException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public void selectDateFilter(String dateFilter) {
        try {
            BrowserUtils.waitFor(3);
            try {
                Driver.get().findElement(By.id("createAlertPop")).click();
            } catch (Exception e) {
                e.printStackTrace();
            }
            BrowserUtils.waitFor(3);
            BrowserUtils.click(By.id("select-menu-search_filters_days"));
            Select select = new Select(Driver.get().findElement(By.id("search_filters_days")));
            select.selectByVisibleText(dateFilter);
            BrowserUtils.waitFor(3);

//            Driver.get().findElement(By.xpath("//*[@class='select-menu-item' and text()='"+dateFilter+"']")).click();
//            Driver.get().findElement(By.cssSelector(".popover-x-button-close.icl-CloseButton")).click();
        } catch (NoSuchElementException e) {
            e.printStackTrace();
        }
    }
}
