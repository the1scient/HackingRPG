import Foundation


func start() {
    
    clear()
    
    dots(quantidade: 5, time: 900000)
    
    type(texto: "[JORNALISTA]: As notícias se espalham de que a Rússia irá enviar um míssil nuclear para os Estados Unidos. A população entra em terror com uma iminente guerra nuclear...", time: speed)
    
    type(texto: "[JORNALISTA 2]: Diversos roubos estão acontecendo... o caos está se instaurando nas ruas das cidades de todo o Brasil e do mundo...", time: speed)
    
    dots(quantidade: 2, time: 500000)
    
    clear()
    
    type(texto: "[JORNALISTA]: A pergunta agora é: como o Mundo poderá ser salvo de uma possível catástrofe nuclear?", time: speed)
    
    
    dots(quantidade: 5, time: 900000)
    
    sleep(2)
    
    clear()
    
    type(texto: "* Será que eu devo ajudar? Tenho diversos conhecimentos sobre hacking mas não sei se teria os recursos suficientes... *", time: speed)
    
    type(texto: "* Se eu escolher ajudar... preciso invadir diversos servidores, conseguir ferramentas sigilosas de hacking do governo e muito mais... mas se eu não ajudar...  *", time: speed)
    
    type(texto: "* Se eu não ajudar talvez o mundo acabe... *", time: speed)
    
    dots(quantidade: 3, time: 90000)
    
    sleep(2)
    
    clear()
    
    type(texto: "Você gostaria de ajudar?   [S/n]", time: speed)
    
    let escolha = readLine()
    
    if escolha == "S" || escolha == "s" {
        
        clear()
        
        type(texto: "* Antes de tudo... preciso camuflar meus rastros para não ser pego pela Polícia ou outro Hacker... Preciso invadir a GL Security e roubar seu programa de VPN! *", time: speed)
        
        type(texto: "* Vou ligar meu computador... *", time: speed)
        
        clear()
        
        dots(quantidade: 5, time: 50000)
        
        clear()
        
        boot()
        
        clear()
        
        print("Digite seu username: \n")
        
        username = readLine()!
        
        type(texto: "Senha: ***********", time: speed)
        
        type(texto: "Bem-vindo, \(username)", time: speed)
        
        
        
    }
    
    else {
        
        type(texto: "A Rússia envia mísseis para os Estados Unidos e os Estados Unidos enviam mísseis de volta, resultando em uma catástrofe nuclear. O mundo acaba e toda a população humana morre.", time: 90000)
        type(texto: "F I M   D E   J O G O", time: 200000)
        exit(0)
        
    }
    
    
}


