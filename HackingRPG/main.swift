import Foundation


var username : String = "";

var speed : Int = 9000

chooseSpeed()

// Itens da VPN
var vpnUnlocked = false
var vpnActive = false

start()

engenhariaSocial()

if vpnUnlocked == true {
    type(texto: "[INVENTÁRIO] \(username), você desbloqueou a >> VPN << para ocultar seus rastros. Acesse seu inventário e ative a VPN para ocultar seus rastros.", tempo: speed)
    callInventory(quit: false)

}

else {
    type(texto: "* Preciso invadir os servidores do FBI para roubar o programa de Bruteforce deles. Espero que, mesmo >> SEM << VPN, eles não consigam me rastrear! *", tempo: speed)
    callInventory(quit: false)
}

type(texto: "* Agora, preciso invadir os servidores do FBI para roubar o programa de Bruteforce deles... Vai ser bem mais trabalhoso ainda! *", tempo: speed)

// Evitar que o programa encerre no final
RunLoop.main.run()
