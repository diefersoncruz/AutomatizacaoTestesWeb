package br.com.treinaweb.selenium.tests;

import org.openqa.selenium.By;
import org.testng.Assert;
import org.testng.annotations.Test;

public class HelloSeleniunTest extends TreinaWebSeleniumTestBase{

	@Test
	
	public void testHelloSelenium() {
		setUrl("https://matematicando.web.app/testeSelenium/teste-selenium.html");
		
		// preenche a input txb-nome com Teste Dieferson
		getDriver().findElement(By.id("txb-nome")).sendKeys("Teste Dieferson");
		
		// retorna o valor do campo input
		String textoInput = getDriver().findElement(By.id("txb-nome")).getAttribute("value");
		
		// valida o texto do input
		Assert.assertEquals(textoInput, "Teste Dieferson");
	}
}
