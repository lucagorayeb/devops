# Continuos Integration

Integração continua é um termo que foi cunhado sem uma definição específica.
Ao longo dos anos foi ganhando sentido até se tornar o que de fato é hoje em dia. 
Um forma de evoluir o software atráves de pequenas alterações.

A integração continua se baseia em três pilares:

- Regularidade:
    A regularidade está presente em relação as alterações feitas no código. 
    Quer dizer que as implementações devem ser colocadas em produção regularmente.

- Rastreabilidade/Confiabilidade:
    Torna mais fácil dectar o erro ou corrigir o erro evitando que pull requests
    direcionados para produção passem. Além de outra politíca de segurança é permitir 
    que apenas um seleto grupo posso fazer a manutenção do sistema de produção.

- Regressão:
    Quando uma funcionalidade é criada ela precisa ser exaustivamente testada.
    Os teste são feitos para evitar ter que regredir o software. Assim se fazem 
    necessários testes automatizados para manter o ambiente em ordem.

Outros motivos que fazem a continua integração uma boa prática são a liberdade que se 
tem para criar funcionalidades novas e implementa-las, gerar mais fluxo de capital para as 
empresas, pois não precisam esperar o lançamento da novar versão ou os lançamentos agendados.

As fases da integração continua são:

    commit: 
        É a parte que cobre o processo de construção do software. Testes unitários e arquivos staticos.

    Testes de Aceitação:
        Testes atumatizados para testar as funcionalidades adicionadas.

    Testes de capacidade:
        Não são somente testes de performance, mas também são testes de escalabilidade da solução.

    Testes Exploratorios:
         São testes de novas funcionalidades buscando comportamentos indevidos, nem todos os teste precisam
         ser automatizados. Quando de se tem uma grande quantidade de testes automatizados fica mais difícil
         de fazer o continuous delivery.

    Produção:
        O deploy é pegar o software que foi desenvolvido e colocar em um ambiente de baixo risco para que seja usado.

Eu fiz algumas pesquisas usando I.A para enteder sobre aspectos que estava lendo do livro. Acontece que esse livro 
é focado em ambientes java. A lógica se permanece, principalmente que é falado sobre a ordem de criação das plataformas
de serviço. Os passos são geralmente instalar as dependencias, compilar ou executar os arquivos e disponobilizar. 

Testes de unidade:

    Testes unitários são uma parte importante da intregração contínua, neles são validadas as novas funcionalidades
    relacionadas ao código. 

Teste Drive Desemvolvimento:
    
    Nesse caso os testes são criados antes das funções e classes serem criadas. Essas implementações seguem uma 
    lógica de Rede -> Green -> Refactor.

    TDD treina para que com o tempo os devs fiquem cada vez melhores em fazer apenas pequenas alterações.

página 100
