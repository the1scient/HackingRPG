import Foundation

var username : String = "";
var speed : Int = 900

chooseSpeed()

// Itens do Inventário
var vpnUnlocked = false
var vpnActive = false
var passwordUnlocked = false

start()

engenhariaSocial()

print("DESAFIO 1 - ESCALANDO PRIVILÉGIOS DO ADMINISTRADOR".blue())

findSpecificKeyword(keyword: "defesa12345", size: 1000)

if vpnUnlocked == true {
    type(texto: "[INVENTÁRIO] \(username), você desbloqueou a (" + "VPN".cyan() + ") para ocultar seus rastros. Acesse seu inventário e ative a VPN para ocultar seus rastros.", time: speed)
    inventoryDecision()
}
else {
    type(texto: "* Preciso invadir os servidores do FBI para roubar o programa de Bruteforce deles. Espero que, mesmo >> SEM << VPN, eles não consigam me rastrear! *", time: speed)
    inventoryDecision()
}

type(texto: "* Agora, estou em meio a uma missão " + "crítica".red() + ". * \n * Meu próximo objetivo é penetrar os servidores do FBI para extrair o programa de Bruteforce deles. Esta etapa representa um desafio significativo que demandará uma abordagem meticulosa e altamente especializada! *", time: speed)


// Desafio 2

print("DESAFIO 2 - HACKEANDO O FBI".yellow())

quickSum(amount: 3, time: 5, chances: 3)

type(texto: "* Consegui entrar no sistema do FBI! * ", time: speed)

verifyVpn(arrestedText: "Você foi preso pelo FBI. \n Não camuflar seus rastros não é uma medida inteligente.")

// Interceptar a ligação do Presidente e do Secretário de Defesa dos EUA

clear()

type(texto: "* Agora consigo interceptar a ligação do Presidente... Quem sabe ele passe alguma informação sigilosa nesse momento crucial! *", time: speed)

sleep(5)

dots(quantidade: 5, time: 500000)

print("INTERCEPTANDO A LIGAÇÃO DO PRESIDENTE DOS EUA".red2())
dots(quantidade: 5, time: speed)

sleep(5)

clear()


type(texto: "[PRESIDENTE] Aqui está a senha, John. É crucial que a mantenha segura.", time: speed)
type(texto: "[SECRETÁRIO DE DEFESA] Entendido, senhor presidente. Esta informação estará protegida.", time: speed)
type(texto: "[PRESIDENTE] Ótimo. A senha é: Operação Fênix, código 7246.".magenta(), time: speed)
type(texto: "[SECRETÁRIO DE DEFESA] Positivo, senhor Presidente. ", time: speed)
type(texto: "[PRESIDENTE] Mantenha-a em segredo, John. O destino do país está dependendo disso.", time: speed)
type(texto: "[SECRETÁRIO DE DEFESA] Pode confiar em mim, senhor presidente. Farei tudo o que estiver ao meu alcance para garantir a segurança da nação. ", time: speed)
type(texto: "[SECRETÁRIO DE DEFESA] E não se preocupe, senhor presidente. Estou preparado para proteger essa senha com minha vida, se necessário.", time: speed)
type(texto: "[PRESIDENTE]  Confio plenamente em você, John. Juntos, vamos manter nosso país seguro.", time: speed)

dots(quantidade: 3, time: 500000)

type(texto: "[INVENTÁRIO] Código desbloqueado (" + "7246".cyan() + ")", time: speed)
passwordUnlocked = true

// Desbloquear a senha

// Hackear pentágono - phishing

type(texto: "* Melhor verificar minhas ferramentas antes de mergulhar nesta outra missão! * \n * Preciso de informações sobre os pontos fracos do Pentágono! Talvez consiga obter alguns dados valiosos na Dark Web *", time: speed)
type(texto: "* Navengando pela Dark Web para conseguir informações confideciais sobre os sistemas de Pentágono *".bold(), time: speed)
type(texto: "* Ótimo! Tenho alguns dados! Vou me infiltrar no Pentágono e convencer um funcionário a baixar meu vírus em seus sistemas *", time: speed)
type(texto: "* Encontrei: " + "chris@pentagon.gov".blue() +  "*", time: speed)
sleep(2)
clear()

phishingEmail(stage: 1, mailItems: [])

// Desafio 4 - Escalar privilégios - cifra de césar

type(texto: "* Agora que consegui acesso ao Pentágono, consigo estabelecer uma conexão com os servidores da Rússia. Somente assim consigo hackear as plantas nucleares! *", time: speed)

cesarCypher(attempts: 3)

// Inserir código 7246

// Desafio 5 - Descobrir números para Hackear servidores da Rússia

clear()

type(texto: "Troque número por letras... ", time: speed)

numberToKeyword(keyword: "libertywomen", attempts: 3)

inventoryDecision()

type(texto: "Para enviar os comandos aos servidores da Rússia, digite o código de permissão Presidencial: \n", time: speed)

let presidentialCode = Int(readLine()!)!

if presidentialCode == 7246 {
    goodEnding()
}
else {
    arrested(text: "Os servidores da Rússia detectaram acessos estranhos aos seus servidores. \n Suspeitando que os Estados Unidos estavam invadindo seus servidores, a Rússia decide antecipar o lançamento das ogivas nucleares. \n A humanidade entra em colapso e todas as formas de vida são extintas da face da terra.")
}


// Evitar que o programa encerre no final
RunLoop.main.run()
