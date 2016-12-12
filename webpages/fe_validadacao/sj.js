

var Validacao;
var disciplinapraValidar;



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
    disciplinapraValidar = DisParaValidar;
    Validacao =
    {
        "disciplinas": [
            {
                "codigo": disciplinapraValidar
            },
        ]
    }
}
function PegaCargaHorariaDisciplina(disciplinapraValidar) {
    // switch case com as disciplinas
    return 92;
}

function reply_clickPedidoSalvar() {
    if (event.srcElement.id === "Pedido") {
        // console.log(JSON.stringify(Validacao));
        // var requestValidacao = new XMLHttpRequest();
        // requestValidacao.open('POST', requestURL);
        // requestValidacao.setRequestHeader('Content-Type', 'application/json');
        // requestValidacao.responseType = 'json';
        // requestValidacao.send(JSON.stringify(Validacao));
        //
        // requestValidacao.onload = function () {
        //     if (requestValidacao.readyState === 403) {
        //         alert('Erro')
        //     }
        // }

        // Gera PDF

        //var docDefinition = { content: 'This is an sample PDF printed with pdfMake' };

        var disciplinaUm = document.getElementById("d").value;
        var disciplinaDois = document.getElementById("d2").value;
        var disciplinaTres = document.getElementById("d3").value;

        var cargaHorariaUm = document.getElementById("ch").value;
        var cargaHorariaDois = document.getElementById("ch2").value;
        var cargaHorariaTres = document.getElementById("ch3").value;

        var cargaDisciplinaPraValidar = PegaCargaHorariaDisciplina(disciplinapraValidar);

        var docDefinition = {

            pageMargins: [40, 120,40, 50],
            header: {
                margin: 18,
                columns: [
                    {
                        image: 'data:image/png;base64,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 ',
                        width: 100
                    },
                    {
                        margin: [10, 0, 0, 0],
                        stack: [
                                {text : 'MINISTÉRIO DA EDUCAÇÃO',bold: true },
                                'SECRETARIA DE EDUCAÇÃO PROFISSIONAL E TECNOLÓGICA',
                                'INSTITUTO FEDERAL DE EDUCAÇÃO, CIÊNCIA E TECNOLOGIA DE SANTA CATARINA',
                                'CAMPUS SÃO JOSÉ',
                                'CURSO DE ENHEMHARIA EM EM TELECOMUNICAÇÕES',
                            ],
                    }
                ]
            },

            footer: {
                // esquerda,cima,direita,baixo
                margin: [0,0,20,0],
                stack: [
                        {text:'Rua José Lino Kretzer, 608', alignment: 'right'},
                        {text:'Praia Comprida - 88103-310 – São José/SC', alignment: 'right'},
                        {text:'Fone: (48) 3381 2850', alignment: 'right'},
                    ],
            },
            content: [
                    { text: 'REQUERIMENTO DE VALIDAÇÃO DE COMPONENTE CURRICULAR', style: 'header' },
                    {
                        margin: [50,0,0,0],
                        columns: [
                            [
                                { text: 'CURSO: Engenharia de Telecomunicações', alignment: 'left' },
                                { text: 'MATRÌCULA: 1210011050', alignment: 'left' },
                                { text: 'EMAIL: boiofblackface@uol.com.br', alignment: 'left' },
                            ],
                            [
                                { text: 'SEMESTRE: 2016/2', alignment: 'left' },
                                { text: 'NOME: Boi Da Cara Preta', alignment: 'left' },
                                { text: 'TELEFONE: 32331010', alignment: 'left' },
                            ]
                        ]
                    },
                    {text: 'COMPONENTE CURRICULAR(CH): '+disciplinapraValidar+'('+cargaDisciplinaPraValidar+')', style: 'disp'},
                    {
                        style: 'tableExample',
                        table: {
                            widths: [ 400, 100],
                            body: [
                                ['Nome das disciplinas do curso de origem (IES)','Carga-horária (horas)'],
                                [disciplinaUm , cargaHorariaUm],
                                [ disciplinaDois, cargaHorariaDois],
                                [ disciplinaTres,cargaHorariaTres],
                            ]
                        }
                    },
                    {
                        margin: [0,20,0,0],
                        stack: [
                            {text:'Para solicitar validação o aluno deverá entregar esse requerimento na secretaria do DEPE', sytle: 'para'},
                            'e abrir um processo de validação. O processo de validação será registrado no Sistema SIGA,',
                            'devendo ser entregue junto com os documentos comprobatórios necessários.',
                        ],
                    },
                    {
                        margin: [0,20,0,0],
                        columns: [
                            [
                                { text: 'Ass: ___________________________________________________', alignment: 'left' },
                                { text: 'aluno ou representante legal', alignment: 'center' },
                            ],
                            [
                                { text: 'DATA:___/___/___', style: 'data'},
                            ]
                        ]
                    }

                ],

            styles: {
                header: {
                    fontSize: 15,
                        bold: true,
                        margin: [0, 20 , 0, 20],
                        alignment: 'center',
                },
                subheader: {
                    fontSize: 16,
                        bold: true,
                        margin: [0, 10, 0, 5]
                },
                tableExample: {
                    margin: [0, 5, 0, 15],
                    alignment: 'center',
                },
                disp: {
                    fontSize: 13,
                    bold: true,
                    alignment: 'center',
                    margin: [0,10,0,10]
                },
                para: {
                    margin: [10,0,0,0]
                },
                data: {
                    margin: [80,0,0,0]
                },
                tableHeader: {
                    bold: true,
                        fontSize: 13,
                        color: 'black'
                }
            }
        };


        pdfMake.createPdf(docDefinition).print();
        

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
        // Gera PDF
        alert("Botão Salvar")
    }
}





