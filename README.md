# MyWinesDB


<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/tiagoASF/BudgetAppAPI">
    <img
src="https://user-images.githubusercontent.com/37958485/229240973-bffc65ff-86c0-4e20-8da8-dfa2a06ac587.png" alt="Logo" width="440" height="250">
  </a>

  <h3 align="center">MyWinesDB</h3>

  <p align="center">
    Banco de dados da aplicação MyWinesClub.
    <br />
	<br />
	<br />
	

	
<!-- ABOUT THE PROJECT -->
## Sobre o projeto

<!--[![Product Name Screen Shot][product-screenshot]](https://example.com)-->

O projeto tem como finalidade a implementação de um banco de dados publicado na Azure, usando SQL Server, que trata do registro e monitoramentos dos vinhos bebidos durante o ano. Além da possibilidade de registro da garrafas, com distinção entre aquelas bebidas, de coleção e aguardando na adega para serem consumidas. O banco ainda relaciona por meio de url as garrafas com suas respectivas fotografias - armazenadas em um storage também em nuvem.


### Stack de tecnologias

* Azure SQL
* T-SQL
* Azure Storage

	<br />
	
	<figure style="align-items:center;">
		<img src="https://github.com/tiagoASF/mywinesDB/blob/main/docs/mywinesDB_erd.png" alt="Logo" width="700" height="500">
	</figure>

<br />
<br />
<br />
	
	
<h3 align="center"> 
	🚧  Banco em construção...  🚧
</h3>

<!-- ROADMAP -->
## Roadmap

### Alterações prioritárias
- [ ] Alterar PK de wine_region. PK deve ser chave composta de country, region, subregion.

### Fase 01
- [X] Projeto do banco
- [X] Criação do banco
- [X] Criar tabelas e relacionamentos
- [X] Criar usuarios. Usuario_1 com permissao de escrita e leitura, Usuario_2 com permissao de leitura  
- [X] Popular tabela style
- [X] Popular tabela aging_vessel
- [X] Popular tabela status
- [X] Criar tabela de log wine
- [X] Criar tabela de log acquired_bottle
- [X] Criar triggers de log wine
- [X] Criar triggers de log acquired_bottle 

### Fase 02
- [X] Inserir dados das garrafas na adega
- [X] Criar VIEW para retornar tabela com o país, região e subregião
- [X] Criar VIEW para retornar informações de uma garrada armazenada
- [X] Criar VIEW para retornar informações de uma garrada consumida
- [ ] Criar SP para inserir uma localização (levando em consideração país, região e subregião)
- [ ] Criar SP para inserir um varietal
- [ ] Criar SP para inserir uma garrafa adquirida

### Fase 03
- [ ] Coletar dados das garrafas já consumidas em 2023, estruturando os dados em um arquivo próprio
- [ ] Criar bucket S3 para armazenar as fotografias
- [ ] Criar SP para inserir uma garrafa consumida
- [ ] Criar VIEW para retornar informações de uma garrada consumida
- [ ] Criar VIEW para mostrar quantidade de garrafas consumidas em 2023, separando por tipo, uva e país
- [ ] Criar banco Sql Server no AWS
- [ ] Popular banco com garrafas já consumidas
- [ ] Fazer upload das imagens
