import Foundation

var username : String = "";
var speed : Int = 900

//chooseSpeed()

// Itens da VPN
var vpnUnlocked = false
var vpnActive = true

//start()

//engenhariaSocial()

//quickSum(amount: 3, time: 5, chances: 3)

//if vpnUnlocked == true {
//    type(texto: "[INVENTÁRIO] \(username), você desbloqueou a >> VPN << para ocultar seus rastros. Acesse seu inventário e ative a VPN para ocultar seus rastros.", time: speed)
//    callInventory(quit: false)
//
//}
//
//else {
//    type(texto: "* Preciso invadir os servidores do FBI para roubar o programa de Bruteforce deles. Espero que, mesmo >> SEM << VPN, eles não consigam me rastrear! *", time: speed)
//    callInventory(quit: false)
//}
//
//type(texto: "* Agora, preciso invadir os servidores do FBI para roubar o programa de Bruteforce deles... Vai ser bem mais trabalhoso ainda! *", time: speed)
//

quickSum(amount: 3, time: 5, chances: 3)

findSpecificKeyword(keyword: "defesa12345", size: 1000)

//verifyVpn(arrestedText: "Você foi preso pelo FBI. \n Não camuflar seus rastros não é uma medida inteligente.")

// Interceptar a ligação do Presidente e do Secretário de Defesa dos EUA

clear()

sleep(5)

dots(quantidade: 5, time: 500000)



type(texto: "[PRESIDENTE] Aqui está a senha, John. É crucial que a mantenha segura.", time: speed)
type(texto: "[SECRETÁRIO DE DEFENSA] Entendido, senhor presidente. Esta informação estará protegida.", time: speed)
type(texto: "[PRESIDENTE] Ótimo. A senha é: Operação Fênix, código 7246.", time: speed)
type(texto: "[SECRETÁRIO DE DEFENSA] ", time: speed)
type(texto: "[PRESIDENTE] Mantenha-a em segredo, John. O destino do país pode depender disso.", time: speed)
type(texto: "[SECRETÁRIO DE DEFENSA] Pode confiar em mim, senhor presidente. Farei tudo o que estiver ao meu alcance para garantir a segurança da nação. ", time: speed)
type(texto: "[PRESIDENTE] Excelente. Conto com você, John. Essa informação é vital para nossa defesa.", time: speed)
type(texto: "[SECRETÁRIO DE DEFENSA] Não se preocupe, senhor presidente. Estou preparado para proteger essa senha com minha vida, se necessário.", time: speed)
type(texto: "[PRESIDENTE]  Confio plenamente em você, John. Juntos, vamos manter nosso país seguro.", time: speed)

dots(quantidade: 3, time: 500000)

type(texto: "[INVENTÁRIO] Código desbloqueado (" + "7246".cyan() + ")", time: speed)


// Desbloquear a senha

// Hackear pentágono - phishing

type(texto: "* Preciso persuadir um funcionário do Pentágono a baixar um vírus meu... Somente assim vou conseguir hackear eles! *", time: speed)

phishingEmail(stage: 1, mailItems: [])

// Desafio 4 - Escalar privilégios - cifra de césar


cesarCypher(attempts: 3)


// Desafio 5 - Descobrir números

clear()

type(texto: "Troque número por letras... ", time: speed)

numberToKeyword(keyword: "abacate", attempts: 3)

goodEnding()


// Evitar que o programa encerre no final
RunLoop.main.run()
