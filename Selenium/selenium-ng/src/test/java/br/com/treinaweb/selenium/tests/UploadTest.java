package br.com.treinaweb.selenium.tests;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.testng.annotations.Test;

public class UploadTest extends TreinaWebSeleniumTestBase{
	
	@Test
	
	public void testUpload() {
		setUrl("http://demo.guru99.com/selenium/upload/");
		getDriver().findElement(By.id("uploadfile_0")).sendKeys("C:\\temp\\teste.png");
		getDriver().findElement(By.id("terms")).click();
		getDriver().findElement(By.name("send")).click();
		// cria um objeto para aguardar o elemento ficar vísivel
		WebDriverWait wait = new WebDriverWait(getDriver(), 30);
		// aguarda o objeto ""
		wait.until(ExpectedConditions.presenceOfElementLocated(By.id("res")));		
		Assert.assertTrue(getDriver().findElement(By.id("res")).isDisplayed());
		Assert.assertTrue(getDriver().findElement(By.id("res")).getText().contains("successfully"));
	}

}
