# MyYearAPI
Aplicação para monitorar meus jogos, séries, filmes, livros e.. vinhos!

<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/tiagoASF/BudgetAppAPI">
    <img
src="https://user-images.githubusercontent.com/37958485/132957514-6cf20a91-f894-46d6-94f7-9f0441825f87.png" alt="Logo" width="440" height="250">
  </a>

  <h3 align="center">MyYearApp REST API</h3>

  <p align="center">
    Uma API para integrar os registros de consumo de mídias, e também vinhos.
    <br />

  
<!-- SUMÁRIO -->
<details open="open">
  <summary>Sumário</summary>
  <ol>
    <li>
      <a href="#Sobre o projeto">Sobre o projeto</a>
      <ul>
        <li><a href="#built-with">Stack de tecnologias</a></li>
      </ul>
    </li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#futuro">Próximos passos</a></li>		  
  </ol>
</details>  

	
<!-- ABOUT THE PROJECT -->
## Sobre o projeto

<!--[![Product Name Screen Shot][product-screenshot]](https://example.com)-->

O projeto tem como finalidade a implementação de uma API Rest publicada na Azure, com banco em SQL Server,  que trata do monitoramento do que que jogo, leio, assisto e bebo durante o ano. Além da possibilidade de registro do consumo de mídia, backlog e wishlist, a API ainda fornecerá os dados necessários para a geração de relatórios que objetivam visualizar graficamente o comportamento do consumo. 

A web API está sendo escrita em .Net 6 usando o Repository Pattern e EF Core para o acesso e persistencia dos dados no banco. A autenticação e autorização será implementada usando Identity e Token JWT.
	

### Stack de tecnologias


* [C# 10.0](https://docs.microsoft.com/pt-br/dotnet/csharp/)
* [.Net 6](https://docs.microsoft.com/pt-br/dotnet/core/dotnet-five)
* [ASP.NET Minimal API](https://dotnet.microsoft.com/apps/aspnet/apis)
* [SQL Server](https://www.microsoft.com/pt-br/sql-server/)
* [Entity Framework Core 6](https://docs.microsoft.com/pt-br/ef/core/what-is-new/ef-core-6.0/whatsnew)


<h3 align="center"> 
	🚧  App em construção...  🚧
</h3>

<!-- ROADMAP -->
## Roadmap
- [ ] Criar a estrutura da aplicação e a delimitação de contextos </br>
- [ ] Criar entidades
- [ ] Criar usuários e rules
- [ ] Estruturar sistema de controle de erros, validações e exceptions
- [ ] EF Core para acesso aos dados
- [ ] Implementar Repository Pattern e acesso aos dados no banco
- [ ] Criar a API e rotas
- [ ] Ações da aplicação
	- [ ] CRUD de Games
	- [ ] CRUD de Livros
	- [ ] CRUD de Livros-Jogos
	- [ ] CRUD de Filmes
	- [ ] CRUD de Séries
	- [ ] CRUD de HQ
	- [ ] CRUD de Vinhos
	- [ ] Relatórios de lançamentos diário, semanal, mensal, anual
	- [ ] Relatórios por data
	- [ ] Buscar operacao específica
	- [ ] Relatório com agrupamento por categorias 		
- [ ] Autenticação e autorização
- [ ] Verificar cobertura de testes
- [ ] Deploy Azure


## Próximos passos
- [ ] 🚀 Criar frontend em React
- [ ] Separar a API de multimídia da API de vinhos.
