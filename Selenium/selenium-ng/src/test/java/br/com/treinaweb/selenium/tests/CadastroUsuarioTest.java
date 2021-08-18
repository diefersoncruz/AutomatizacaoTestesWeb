package br.com.treinaweb.selenium.tests;

import static org.testng.Assert.assertEquals;

import org.junit.Assert;
import org.openqa.selenium.By;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;

public class CadastroUsuarioTest extends TreinaWebSeleniumTestBase{
	
	@BeforeMethod	
	public void setupPage() {
		setUrl("https://matematicando.web.app/testeSelenium/teste-selenium.html");
	}

	@Test(priority = 2)
	public void verificarEmailsDiferentesTest() {
		//Preenche os campos de e-mail
		getDriver().findElement(By.id("txb-email")).sendKeys("dieff.cruz@gmail.com");
		getDriver().findElement(By.id("txb-confirmar-email")).sendKeys("dieff.cruz@bol.com");
		//realiza o click no botão
		getDriver().findElement(By.id("btn-salvar")).click();
		//valida se a div existe na tela
		Assert.assertTrue(getDriver().findElement(By.id("div-erro-cadastro-usuario")).isDisplayed());
		Assert.assertTrue(getDriver().findElement(By.id("div-val-email")).isDisplayed());
		assertEquals(getDriver().findElement(By.id("div-val-email")).getText(), "Os e-mails devem ser iguais");
	}
	@Test(priority = 1)
	public void verificarNomeNaoPreenchidoTest() {
		getDriver().findElement(By.id("txb-nome")).sendKeys("");
		getDriver().findElement(By.id("btn-salvar")).click();
		Assert.assertTrue(getDriver().findElement(By.id("div-erro-cadastro-usuario")).isDisplayed());
		Assert.assertTrue(getDriver().findElement(By.id("div-val-nome")).isDisplayed());
		assertEquals(getDriver().findElement(By.id("div-val-nome")).getText(), "O nome é obrigatório");
	}
}
