package com.task.step_definitions;

import com.task.pages.*;
import com.task.utilities.BrowserUtils;
import com.task.utilities.ConfigurationReader;
import com.task.utilities.Driver;
import com.task.utilities.ExcelUtil;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.interactions.Actions;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.OptionalDouble;


public class MainStepDefs {

    public static ArrayList<Integer> listOfTotalJobs = new ArrayList<>();
    Integer totalJobs;
    static String sheetName = null;
    public static ExcelUtil dataSheet;


    @Given("the user navigates to {string} main page")
    public void the_user_navigates_to_main_page(String app) {

        Driver.get().get(ConfigurationReader.get("url_" + app));


    }


    @When("the user clicks on {string} button")
    public void the_user_clicks_on_button(String buttonName) {
        new MainPage().clickButton(buttonName);
    }


    @Then("the user gets total jobs founded for {string}")
    public void theUserGetsTotalJobsFoundedFor(String platform) {

        // this.totalJobs = new MainPage().getTotalJobsForIndeed();
        this.totalJobs = new MainPage().getTotalJobs(platform);
        System.out.println("total jobs " + this.totalJobs);
    }


    @And("the user prints total jobs to excel for {string}")
    public void theUserPrintsTotalJobsToExcelFor(String platform) {


    }


    @When("the user accepts coocies in {string}")
    public void theUserAcceptsCoociesIn(String platform) {

        Driver.get().manage().deleteAllCookies();

    }

    @And("the user prints total jobs to excel for {string} and {string} and {string}")
    public void theUserPrintsTotalJobsToExcelForAndAnd(String platform, String title, String dateFilter) {

        dataSheet.createRow();

        // String date = formatter.format(LocalDateTime.now());

        dataSheet.setCellData(LocalDateTime.now().toString(), dataSheet.rowCount() - 1, 0);
        dataSheet.setCellData(platform, dataSheet.rowCount() - 1, 1);
        dataSheet.setCellData(title, dataSheet.rowCount() - 1, 2);
        dataSheet.setCellData(this.totalJobs.toString(), dataSheet.rowCount() - 1, 3);
        dataSheet.setCellData(dateFilter, dataSheet.rowCount() - 1, 4);
        if (dateFilter.equalsIgnoreCase("Today") || dateFilter.contains("24")) {
            dataSheet.setCellData("Today", dataSheet.rowCount() - 1, 4);
        }

        if (dateFilter.equalsIgnoreCase("Today") || dateFilter.contains("24")) {
            listOfTotalJobs.add(this.totalJobs);
        }


    }

    @When("the user selects {string} for indeed")
    public void theUserSelectsForIndeed(String dateFilter) {
        new Indeed().selectDateFilter(dateFilter);
    }

    @When("the user selects {string} for zip")
    public void theUserSelectsForZip(String dateFilter) {
        new Zip().selectDateFilter(dateFilter);
    }

//    @And("the user prints avarage jobs found to excel")
//    public void theUserPrintsAvarageJobsFoundToExcel() {
//
//        Double avarage;
//
//
//         avarage = listOfTotalJobs.stream()
//                .mapToDouble(listOfTotalJobs::get)
//                .average()
//                .orElse(Double.NaN);
//         dataSheet.createRow();
//        dataSheet.setCellData("avarage",dataSheet.rowCount()-1,3);
//        dataSheet.setCellData(avarage.toString(),dataSheet.rowCount()-1,4);
//
//
//
//    }


    public void getAvarage() {

        OptionalDouble avarage = MainStepDefs.listOfTotalJobs
                .stream()
                .mapToDouble(a -> a)
                .average();


        MainStepDefs.dataSheet.createRow();
        MainStepDefs.dataSheet.setCellData("avarage", MainStepDefs.dataSheet.rowCount() - 1, 3);
        MainStepDefs.dataSheet.setCellData(avarage.toString(), MainStepDefs.dataSheet.rowCount() - 1, 4);

    }


    @And("the user prints avarage total jobs of today if {string}")
    public void theUserPrintsAvarageTotalJobsOfTodayIf(String isLAst) {


        if (isLAst.equals("true") && listOfTotalJobs.size() > 0) {

            Integer total = 0;
            for (Integer listOfTotalJob : listOfTotalJobs) {
                total += listOfTotalJob;
            }

            MainStepDefs.dataSheet.createRow();
            MainStepDefs.dataSheet.createRow();
            MainStepDefs.dataSheet.setCellData("total", MainStepDefs.dataSheet.rowCount() - 1, 3);
            MainStepDefs.dataSheet.setCellData(total.toString(), MainStepDefs.dataSheet.rowCount() - 1, 4);
            MainStepDefs.dataSheet.createRow();
            MainStepDefs.dataSheet.setCellData("-------------- ------------- -------------- ---------------", MainStepDefs.dataSheet.rowCount() - 1, 0);

            listOfTotalJobs.clear();


        }
//        else if (isLAst.equals("true")) {
//            MainStepDefs.dataSheet.createRow();
//            MainStepDefs.dataSheet.createRow();
//            MainStepDefs.dataSheet.setCellData("-------------- ------------- -------------- ---------------", MainStepDefs.dataSheet.rowCount() - 1, 0);
//        }
    }

    @When("the user enters Job title as {string}")
    public void theUserEntersJobTitleAs(String value) {

        new Actions(Driver.get()).doubleClick(new MainPage().location).click(new MainPage().jobTitle).sendKeys(Keys.DELETE).perform();
        new MainPage().jobTitle.sendKeys(value);


    }

    @When("the user enters location as {string}")
    public void theUserEntersLocationAs(String value) {
        new Actions(Driver.get()).doubleClick(new MainPage().location).click(new MainPage().location).sendKeys(Keys.DELETE).perform();
        new MainPage().location.clear();
        new MainPage().location.sendKeys(value);
    }

    @When("the user selects {string} for careerBuilder")
    public void theUserSelectsForCareerBuilder(String value) {
        new CareerBuilder().selectDateFilter(value);
    }


    @And("the user prints total jobs to excel for {string} , {string} , {string} and {string}")
    public void theUserPrintsTotalJobsToExcelForAnd(String platform, String title, String location, String dateFilter) {

        dataSheet.createRow();

        // String date = formatter.format(LocalDateTime.now());

        dataSheet.setCellData(LocalDateTime.now().toString(), dataSheet.rowCount() - 1, 0);
        dataSheet.setCellData(platform, dataSheet.rowCount() - 1, 1);
        dataSheet.setCellData(title, dataSheet.rowCount() - 1, 2);
        dataSheet.setCellData(location, dataSheet.rowCount() - 1, 3);
        dataSheet.setCellData(this.totalJobs.toString(), dataSheet.rowCount() - 1, 4);
        dataSheet.setCellData(dateFilter, dataSheet.rowCount() - 1, 5);
        if (dateFilter.equalsIgnoreCase("Today") || dateFilter.contains("24")) {
            dataSheet.setCellData("Today", dataSheet.rowCount() - 1, 5);
        }

        if (dateFilter.equalsIgnoreCase("Today") || dateFilter.contains("24")) {
            listOfTotalJobs.add(this.totalJobs);
        }


    }

    @And("the user stops if {string}")
    public void theUserStopsIf(String isLast) {

        if (isLast.equals("true")) {
            MainStepDefs.dataSheet.createRow();
            MainStepDefs.dataSheet.createRow();
            MainStepDefs.dataSheet.setCellData("-------------- ------------- -------------- ---------------", MainStepDefs.dataSheet.rowCount() - 1, 0);
        }

    }

    @And("the user enters location as {string} for monster")
    public void theUserEntersLocationAsForLinkedInForMonster(String value) {
        new Monster().location.sendKeys(value);
        new Monster().location.sendKeys(Keys.ENTER);
    }

    @And("the user enters Job title as {string} for monster")
    public void theUserEntersJobTitleAsForLinkedInForMonster(String value) {
        new Monster().jobTitle.sendKeys(value);
    }

    @And("the user selects {string}")
    public void theUserSelects(String sheet) {
        this.dataSheet = new ExcelUtil("src/test/resources/results1.xlsx", sheet);
    }

    @When("the user clicks on search button on zip")
    public void theUserClicksOnSearchButtonOnZip() {
        BrowserUtils.waitFor(2);
        Driver.get().findElement(By.cssSelector("[value=\"Search Jobs\"]")).click();
        BrowserUtils.waitFor(2);
        try {
            Driver.get().findElement(By.id("createAlertPop")).click();
        } catch (Exception e) {
            e.printStackTrace();
        }
        BrowserUtils.waitFor(2);
    }

    @When("the user clicks on search button on indeed")
    public void theUserClicksOnSearchButtonOnIndeed() {
        BrowserUtils.waitFor(2);
        Driver.get().findElement(By.xpath("//button[text()=\"Find jobs\"]")).click();
        BrowserUtils.waitFor(2);
    }
}
