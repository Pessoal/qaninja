

$(document).ready(function(){

    console.log('Executando o app.js no navegador :)')

    $('#enviar').click(function(){
        var campoNome = $('#nome').val();
        var campoEmail = $('#email').val();
        var campoSenha = $('input[type=password]').val();

        if (campoEmail == ''){
            alert('Email deve ser preenchido')
        } else {
            alert('Enviando para o servidor os seguintes dados:' + campoNome + campoEmail + campoSenha);
        }



    })

});