const numeroSenha = document.querySelector('.parametro-senha__texto');
let tamanhoSenha = 12;
numeroSenha.textContent = tamanhoSenha;
const letrasMaiusculas = 'ABCDEFGHIJKLMNOPQRSTUVXYWZ';
const letrasMinusculas = 'abcdefghijklmnopqrstuvxywz';
const numeros = '0123456789';
const simbolos = '!@%*?';
const botoes = document.querySelectorAll('.parametro-senha__botao');
const campoSenha = document.querySelector('#campo-senha');
const checkbox = document.querySelectorAll('.checkbox');
const forcaSenha = document.querySelector('.forca');
let entropia = tamanhoSenha * Math.log2(tamanhoAlfabeto);
const valorEntropia = document.querySelector('.entropia');
valorEntropia.textContent = 2**Math.floor(entropia)/(100e6*60*60*24);


numeroSenha.textContent = tamanhoSenha;



console.log(botoes)
botoes[0].onclick = diminuiTamanho;
function diminuiTamanho(){
    if (tamanhoSenha > 1){
       // tamanhoSenha = tamanhoSenha-1;
        tamanhoSenha--;
    }
    numeroSenha.textContent = tamanhoSenha;
    geraSenha();
}


botoes[0].onclick = diminuiTamanho;
botoes[1].onclick = aumentaTamanho;
function aumentaTamanho(){
    if (tamanhoSenha < 20){
       // tamanhoSenha = tamanhoSenha+1;
       tamanhoSenha++;
    }
    numeroSenha.textContent = tamanhoSenha;
    geraSenha();
}


function geraSenha() {
    let alfabeto = '';
    if (checkbox[0].checked) {
        alfabeto = alfabeto + letrasMaiusculas;
    }
    if (checkbox[1].checked) {
        alfabeto = alfabeto + letrasMinusculas;
    }
    if (checkbox[2].checked) {
        alfabeto = alfabeto + numeros;
    }
    if (checkbox[3].checked) {
        alfabeto = alfabeto + simbolos;
    }
    let senha = '';
    for (let i = 0; i < tamanhoSenha; i++) {
        let numeroAleatorio = Math.random() * alfabeto.length;
        numeroAleatorio = Math.floor(numeroAleatorio);
        senha = senha + alfabeto[numeroAleatorio];
    }
    campoSenha.value = senha;
    classificaSenha();
}



console.log(checkbox[0].checked);


console.log(alfabeto);

for (let i = 0; i < tamanhoSenha;i++){
    let numeroAleatorio = Math.random()*alfabeto.length;
    numeroAleatorio = Math.floor(numeroAleatorio);
    senha = senha + alfabeto[numeroAleatorio];
}

if (checkbox[3].checked){
    alfabeto = alfabeto + simbolos;
}
function classificaSenha(tamanhoAlfabeto){
    let entropia = tamanhoSenha * Math.log2(tamanhoSenha);
    console.log(entropia);
    forcaSenha.classList.remove('pequeno','medio','grande');
    if (entropia > 57){
        forcaSenha.classList.add('grande');
    } else if (entropia > 35 && entropia < 57) {
        forcaSenha.classList.add('medio');
    } else if (entropia <= 35){
        forcaSenha.classList.add('pequeno');
    }
}

console.log(entropia);

if (entropia > 57){
    forcaSenha.classList.add('grande');
} else if (entropia > 35 && entropia < 57) {
    forcaSenha.classList.add('medio');
} else if (tamanhoSenha <= 5){
    forcaSenha.classList.add('pequeno');
}
valorEntropia.textContent = Math.floor(2**entropia/(100e6*60*60*24));
valorEntropia.textContent = "Um computador pode levar até " + Math.floor(2**entropia/(100e6*60*60*24)) + " dias para descobrir essa senha.";
