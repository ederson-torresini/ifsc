

var Validacao;
var Codigo;
var VetorTabelaHorarios = [
        ["CAL1", "a1,a6"], ["FSC1", "a2,a6"], ["GAL", "a1,a1"], ["DES", "a16,a16"],["ELI", "a18,b18"]
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"],
        // ["CAL1", "a1,a6"], ["FSC1", "a2,a3"], ["GAL", "a18,a17"], ["DES", "a16,a16"],["ELI", "a18,b18"]
];

var FlagDeControeleSelecaoUmaDisciplina;

function FuncaoConfiguraFlagSelecaoDisciplina(ContadorDeDisciplinasSelecioandas) {
    if (ContadorDeDisciplinasSelecioandas === 1) {

        FlagDeControeleSelecaoUmaDisciplina = true;
    }
    else
    {
        FlagDeControeleSelecaoUmaDisciplina = false;
    }
}
function openCity(evt, semestre) {
    // var clicado= true;
    // Declare all variables
    var i, tabcontent, tablinks;

    // Get all elements with class="tabcontent" and hide them
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }

    // Get all elements with class="tablinks" and remove the class "active"
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }

    // Show the current tab, and add an "active" class to the link that opened the tab
    document.getElementById(semestre).style.display = "block";
    evt.currentTarget.className += " active";
}
var JsonHorarioDisciplinasFase1 = {
    "disciplinas":
        [
            {
                "codigo": "DES29001"
            },
            {
                "codigo": "CAL29001"
            },
            {
                "codigo": "FSC29001"
            },
            {
                "codigo": "ELI29001"
            },
            {
                "codigo": "GAL29001"
            },
            {
                "codigo": "LOG29001"
            },
            {
                "codigo": "PJI29001"
            }
        ]
}

var requestURL = '/js/horariodisciplina';
var request = new XMLHttpRequest();
request.open('POST', requestURL);
request.setRequestHeader('Content-Type', 'application/json');
request.responseType = 'json';
request.send(JSON.stringify(JsonHorarioDisciplinasFase1));


function posicionaHorarionaTabela(horarios) {
    var quantidadeDisciplinas  = horarios;
    for (var i = 0; i < quantidadeDisciplinas; i++) {
        VetorTabelaHorarios[i][0]=horarios[i]["disciplina"];
        switch (horarios[i]["inicio"])
        {
            case "07:30:00":
                switch (horarios[i]["dia"])
                {
                    case 1: // segunda
                        VetorTabelaHorarios[i][1] ="a1,a1";
                        break;
                    case 2: // terca
                        VetorTabelaHorarios[i][1] ="a2,a2";
                        break;
                    case 3: // quarta
                        VetorTabelaHorarios[i][1] ="a3,a3";
                        break;
                    case 4: // quinta
                        VetorTabelaHorarios[i][1] ="a4,a4";
                        break;
                    case 5: // sexta
                        VetorTabelaHorarios[i][1] ="a5,a5";
                        break;
                }
                break;

            case "09:40:00":
                switch (horarios[i]["dia"])
                {
                    case 1: // segunda
                        VetorTabelaHorarios[i][1] ="a6,a6";
                        break;
                    case 2: // terca
                        VetorTabelaHorarios[i][1] ="a7,a7";
                        break;
                    case 3: // quarta
                        VetorTabelaHorarios[i][1] ="a8,a8";
                        break;
                    case 4: // quinta
                        VetorTabelaHorarios[i][1] ="a9,a9";
                        break;
                    case 5: // sexta
                        VetorTabelaHorarios[i][1] ="a10,a10";
                        break;
                }
                break;

            case "13:30:00":
                switch (horarios[i]["dia"])
                {
                    case 1: // segunda
                        VetorTabelaHorarios[i][1] ="a11,a11";
                        break;
                    case 2: // terca
                        VetorTabelaHorarios[i][1] ="a12,a12";
                        break;
                    case 3: // quarta
                        VetorTabelaHorarios[i][1] ="a13,a13";
                        break;
                    case 4: // quinta
                        VetorTabelaHorarios[i][1] ="a14,a14";
                        break;
                    case 5: // sexta
                        VetorTabelaHorarios[i][1] ="a15,a15";
                        break;
                }
                break;

            case "15:40:00":
                switch (horarios[i]["dia"])
                {
                    case 1: // segunda
                        VetorTabelaHorarios[i][1] ="a16,a16";
                        break;
                    case 2: // terca
                        VetorTabelaHorarios[i][1] ="a17,a17";
                        break;
                    case 3: // quarta
                        VetorTabelaHorarios[i][1] ="a18,a18";
                        break;
                    case 4: // quinta
                        VetorTabelaHorarios[i][1] ="a19,a19";
                        break;
                    case 5: // sexta
                        VetorTabelaHorarios[i][1] ="a20,a20";
                        break;
                }
                break;

        }
    }

}

function EnviaVetorDeDisciplinaComHorario()
{
    return VetorTabelaHorarios;
}

function alertContents(jsonObj) {
    var header = document.querySelector('item')
    header.textContent = JSON.stringify(jsonObj);
    posicionaHorarionaTabela(jsonObj);
}

request.onload = function() {
        var horarios = request.response;
        alertContents(horarios);
}

function ProcuraDisicplinaSelecionada() {

    for (var i = 0; i < TabelaSemestre.length; i++) {
        if (TabelaSemestre[i].className === "active") {
            console.log("oi2");
            break;
        }
    }
}
function RecebedoHTMLJson(DisParaValidar)
{
    Codigo = DisParaValidar;
    Validacao =
    {
        "disciplinas": [
            {
                "codigo": Codigo
            },
        ]
    }
}
function reply_clickPedidoSalvar() {
    if (event.srcElement.id === "Pedido") {
        console.log(JSON.stringify(Validacao));
        var requestValidacao = new XMLHttpRequest();
        requestValidacao.open('POST', requestURL);
        requestValidacao.setRequestHeader('Content-Type', 'application/json');
        requestValidacao.responseType = 'json';
        requestValidacao.send(JSON.stringify(Validacao));

        requestValidacao.onload = function () {
            if (requestValidacao.readyState === 403) {
                alert('Erro')
            }
        }
    }
    else if (event.srcElement.id === "Salvar") {
        // var SalvarSessao =
        // {
        //     "disciplinas": [
        //         {
        //             "codigo": "DES29001"
        //         },
        //     ]
        // }
        // var requestSalvarSessao = new XMLHttpRequest();
        // requestSalvarSessao.open('POST', requestURL);
        // requestSalvarSessao.setRequestHeader('Content-Type', 'application/json');
        // requestSalvarSessao.responseType = 'json';
        // requestSalvarSessao.send(JSON.stringify(SalvarSessao));
        //
        // requestSalvarSessao.onload = function () {
        //     if (requestSalvarSessao.readyState === 403) {
        //         alert('Erro')
        //     }
        //
        // }
        alert("Botão Salvar")
    }
}





