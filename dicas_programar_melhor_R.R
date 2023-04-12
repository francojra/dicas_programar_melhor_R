
# 10 Dicas para Programar Melhor em R ----------------------------------------------------------------------------------------------------------
# Autoria do script: Jeanne Franco -------------------------------------------------------------------------------------------------------------
# Data: 11/04/23 -------------------------------------------------------------------------------------------------------------------------------
# Referência: https://www.youtube.com/watch?v=1YPXSh09VOU --------------------------------------------------------------------------------------

# 1 - Organização ------------------------------------------------------------------------------------------------------------------------------

### Um script organizado permite menor gasto de tempo, como na busca por arquivos em
### uma pasta, encontro de erros nos códigos, etc. Após um tempo sem utilizar o código
### se torna difícil entrendê-lo, caso ele não esteja organizado. Interfere no comparti-
### lhamento de arquivos com colegas.

### Defina um modelo padrão de organização dos seus scripts para todos os projetos.

### Crie projetos no RStudio para facilitar a organização. Interessante definir uma pasta
### para os scripts, e onde cada script é responsável por diferentes tipos de análises.
### Pode-se definir uma pasta separada para os dados das análises, outra para apresentações,
### outra para resultados, etc.

### Um script do R pode ser feito com rascunhos das análises e ficar na mesma pasta dos
### dados brutos.

# 2 - Rdata/Rhistory ---------------------------------------------------------------------------------------------------------------------------

### Muitas vezes a pasta com os projetos eviados por empresas ou colegas vem com o Rhistory
### que são os dados salvos no 'Environment'.

### Não é necessário salvar o Rdata, pois todo o código fica salvo dentro dos scripts.

### Carregar o Rdata dentro do reprositório pode deixar o trabalho mais lento, pois irá sempre
### carregar o Rdata ao iniciar a sessão.

### Deve sempre carregar o projeto do zero para que o objeto lido seja do código executado
### e não de uma sessão anterior.

### Existe uma forma de não criar um Rdata no seu projeto indo em 'Tools > Global Options'
### 'General' > Desmarcar a opção 'Restore .RData into workspace at startup', e marcar 'never'
### em 'Save worspace to .RData on exit'. Também desmarcar as opções da sessão History.

### O seu History deve ser o seu script!

# 3 - Caminho absoluto vs caminho relativo -----------------------------------------------------------------------------------------------------

### Caminho absoluto: usa-se o '~/' e tab para encontrar o caminho raiz/absoluto do 
### projeto.

"~/"

### Caminho relativo: caminho relativo a alguma pasta. Inicia da pasta do diretório
### de trabalho.

### O caminho sempre deve ser ajustado quando os scripts vem da pasta de outro computador.
### Quando a pessoa usa o caminho relativo, esse problema não ocorrerá. Pois os caminhos
### relativos serão os mesmos em ambos os computadores. Isso na ajuda na reprodutibilidade.

# 4 - Não utilize acentos ------------------------------------------------------------------------------------------------------------------

### Pode haver problemas de ecoding. Alguns computadores usam ISO, outros UTF, que funcionam
### como diferentes dicionários que interpretam os acentos.

### Em comentários, não há problemas.

### Não usar acentos em nomes de colunas nos dados do Excel.

janitor::clean_names() # Para limpar acentos de nomes nas colunas.

# 5 - Environments -------------------------------------------------------------------------------------------------------------------------

### Aba que mostra todos os objetos criados.

### Também apresenta os pacotes base do R, ou seja, os pacotes que já vem
### carregados com diversas funções.

### Algumas funções do R estão presentes em mais de um pacote, por isso
### ocorre o aviso ao carregar um pacote de que outros pacotes podem ser
### mascarados (sobrescritos). Considerando isso, é interessante colocar
### o nome do pacote e em seguida ":" com o nome da função.

### É importante apagar o Global Environment para que os códigos não utilizem
### objetos criados anteriormente.

# 6 - Library ------------------------------------------------------------------------------------------------------------------------------

### Interessante usar o nome do pacote e em seguida ":" com o nome da função
### porque isso permite carregar o pacote ao mesmo tempo que executar a função.
### Isso também garante menos linhas de códigos.

### Carregar os pacotes mais usados no início do script, para que não seja
### necessário sempre colocar o nome do pacote.

