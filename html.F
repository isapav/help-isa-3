<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>meus objetivos</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <section>
    <div class="conteudo-titulo">
        <h2 class="titulo-principal">Gerador de nomes</h2>
        <h3 class="titulo-secundario">Gere instantaneamente um nome aleatório e engraçado</h3>
        <div class="conteudo-senha">
            <input name="senha" type="text" id="campo-senha" readonly>
            <div class="conteudo-senha">
                <label for="senha">Nome</label>
                <input name="senha" type="text" id="campo-senha">
            </div>
            
        </div>
        <div class="parametro">
            <h3 class="parametro-titulo">Personalize seu nome</h3>   
        <div class="parametro-coluna__senha">
            <div class="parametro-senha">
                <h4 class="parametro-senha__titulo">Número de caracteres</h4>
                <div class="parametro-senha-botoes">
                    <button class="parametro-senha__botao">-</button>
                    <p class="parametro-senha__texto">12</p>
                    <button class="parametro-senha__botao">+</button>
                </div>
            </div> 
            <div class="parametro-senha">
                <h4 class="parametro-senha__titulo">Características do nome</h4>
                <div class="parametro-senha-checkbox">
                    <input name="maiusculo" type="checkbox" class="checkbox" checked>
                    <label for="maiusculo">Letras maiúsculas</label>
                </div>
                <div class="parametro-senha-checkbox">
                    <input name="minusculo" type="checkbox" class="checkbox">
                    <label for="minusculo">Letras minúsculas</label>
                </div>
                <div class="parametro-senha-checkbox">
            </div>            
            <div class="parametro-senha">
                <h4 class="parametro-senha__titulo">Tamanho do nome</h4>
                <div class="barra"></div>
                <div class="forca fraca"></div>
                <div class="parametro-senha-textos">
                <p>Pequeno</p>
                <p>Médio</p>
                <p>Grande</p>
            </div>
        </div>
        <p class="entropia"></p>

        
    </div>
    <script src="main.js"></script>

    </section>
</body>
</html>
