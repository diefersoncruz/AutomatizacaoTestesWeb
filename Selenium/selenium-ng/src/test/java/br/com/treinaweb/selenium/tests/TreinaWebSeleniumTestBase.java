package br.com.treinaweb.selenium.tests;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.annotations.AfterClass;
import org.testng.annotations.BeforeClass;

public abstract class TreinaWebSeleniumTestBase {

	private WebDriver driver;

	// anotação para executar rotina antes de instânciar a classe
	@BeforeClass
	public void setup() {
		System.setProperty("webdriver.gecko.dirver", "C:\\tools\\WebDrivers\\geckodriver.exe");
		this.driver =  new FirefoxDriver();
		
		//Timeout de erro - 10 segundos
		this.driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);		
	}
	
	public WebDriver getDriver() {
		return this.driver;
	}
	
	public void setUrl(String url) {
		this.driver.get(url);
	}
	
	// Anotação do TestNG para executar no final dos testes
	@AfterClass 
	public void afterTests() {
		if (this.driver != null) {
			this.driver.close();
		}		
	}
}
