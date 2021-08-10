class EquiposPage
  include Capybara::DSL

  def create(equipos)
    # Isso é um checkpoint para garantir que acessou a pagina corretamente
    page.has_css?("#equipoForm")

    # chama a função UPLOAD caso o arquivo não esteja em branco
    upload(equipos[:thumb]) if equipos[:thumb].length > 0
    find("input[placeholder$=equipamento]").set equipos[:nome]
    #Chama a rotina de selecionar categoria, apenas se a categoria tenha sido informada
    select_cat(equipos[:categoria]) if equipos[:categoria].length > 0
    find("input[placeholder^=Valor]").set equipos[:preco]

    click_button "Cadastrar"
  end

  def select_cat(cat)
    find("#category").find("option", text: cat).select_option
    find()
  end

  def upload(file_name)
    # Pega o caminho do arquivo
    thumb = Dir.pwd + "/Features/Support/Fixtures/images/" + file_name

    find("#thumbnail input[type=file]", visible: false).set thumb
  end
end
