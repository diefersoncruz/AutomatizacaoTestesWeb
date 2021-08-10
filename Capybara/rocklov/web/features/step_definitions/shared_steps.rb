Então("sou redirecionado para o Dashboard") do
  # Valida se a pagina com o elemento dashboard foi encontrado
  expect(@dash_page.on_dash?).to be true
end

Então("vejo a mensagem de alerta: {string}") do |expect_alert|
  expect(@alert.dark).to eql expect_alert
end
