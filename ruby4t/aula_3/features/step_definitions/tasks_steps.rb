Dado('que acessei o formulário de cadastro de tarefas') do
  @tasks = TasksPage.new
  @tasks.add_new.click
end

Dado('que eu tenho uma tarefa com o titulo {string}') do |titulo|
  @titulo = titulo
  # Conecta no banco e garante que a massa de testes está válida
  remove_by_title(@titulo) 
end

Dado('a data de finalização é {string}') do |data|
  @data = data
end

Dado("esta tarefa possui as seguintes tags") do |table|
  @tags = table.hashes
end

Quando('faço o cadastro dessa tarefa') do
  @tasks.form.save(@titulo, @data, @tags)
end

Então("essa tarefa deve ser exibida no topo lista") do
  @tasks.wait_for_list
  res = @tasks.list.first

  expect(res).to have_content @titulo
  expect(res).to have_content @data

  # title = 'Ler um livro de JQUERY'

  # # @tasks.list.each do |t|
  # #   if t.text.include?(title)
  # #     puts t.text
  # #   end
  # # end

  # busca_por_texto = find('table tbody tr', text: title)
  # puts busca_por_texto.text
end

# Delete

Dado("que eu seleciono uma tarefa") do
  @tarefa_para_remover = 'Task muito legal para ser removida'
end

Quando("eu solicito a exclusão dessa tarefa") do
  @tasks = TasksPage.new
  @tasks.wait_for_list
  res = @tasks.tbody.find('tr', text: @tarefa_para_remover)
  res.find('#delete-button').click
end

Quando("confirmo a solicitação de exclusão") do
  @tasks.delete_yes.click
end

Então("esta tarefa deve ser removida da lista") do
  @tasks.search(@tarefa_para_remover)
  expect(@tasks.tasks_view).to have_content 'Hmm... nothing matches your search.'
  sleep 5
end