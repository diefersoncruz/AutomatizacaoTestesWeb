# gancho é executado antes de cada cenário
Before do
  @alert = Alert.new
  @login_page = LoginPage.new
  @signup_page = SignupPage.new
  @dash_page = DashPage.new
  @equipos_page = EquiposPage.new

  # Maximiza a tela do browser
  #page.driver.browser.manage.window.maximize

  #seta o tamanho do janela do Browser
  page.current_window.resize_to(1440, 900)
end

# Gancho é executado depois de cada cenário
After do
  # Salva um print screen temporário após cada execução do cenário
  temp_shot = page.save_screenshot("logs/temp_screenshot.png")

  # Anexa o print screen no relatório do Allure
  Allure.add_attachment(
    name: "Screenshot",
    type: Allure::ContentType::PNG,
    # Chama a função nativa  do Ruby
    source: File.open(temp_shot),
  )
end
