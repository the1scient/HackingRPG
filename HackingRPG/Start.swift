import Foundation


func start() {
    
    clear()
    
    dots(quantidade: 5, tempo: 900000)
    
    type(texto: "[JORNALISTA]: As notícias se espalham de que a Rússia irá enviar um míssil nuclear para os Estados Unidos. A população entra em terror com uma iminente guerra nuclear...", tempo: speed)
    
    type(texto: "[JORNALISTA 2]: Diversos roubos estão acontecendo... o caos está se instaurando nas ruas das cidades de todo o Brasil e do mundo...", tempo: speed)
    
    dots(quantidade: 2, tempo: 500000)
    
    clear()
    
    type(texto: "[JORNALISTA]: A pergunta agora é: como o Mundo poderá ser salvo de uma possível catástrofe nuclear?", tempo: speed)
    
    
    dots(quantidade: 5, tempo: 900000)
    
    sleep(2)
    
    clear()
    
    type(texto: "* Será que eu devo ajudar? Tenho diversos conhecimentos sobre hacking mas não sei se teria os recursos suficientes... *", tempo: speed)
    
    type(texto: "* Se eu escolher ajudar... preciso invadir diversos servidores, conseguir ferramentas sigilosas de hacking do governo e muito mais... mas se eu não ajudar...  *", tempo: speed)
    
    type(texto: "* Se eu não ajudar talvez o mundo acabe... *", tempo: speed)
    
    dots(quantidade: 3, tempo: 90000)
    
    sleep(2)
    
    clear()
    
    type(texto: "Você gostaria de ajudar?   [S/n]", tempo: speed)
    
    let escolha = readLine()
    
    if escolha == "S" || escolha == "s" {
        
        clear()
        
        type(texto: "* Antes de tudo... preciso camuflar meus rastros para não ser pego pela Polícia ou outro Hacker... Preciso invadir a GL Security e roubar seu programa de VPN! *", tempo: speed)
        
        type(texto: "* Vou ligar meu computador... *", tempo: speed)
        
        clear()
        
        dots(quantidade: 5, tempo: 50000)
        
        clear()
        
        boot()
        
        clear()
        
        print("Digite seu username: \n")
        
        username = readLine()!
        
        type(texto: "Senha: ***********", tempo: speed)
        
        type(texto: "Bem-vindo, \(username)", tempo: speed)
        
        
        
    }
    
    else {
        
        type(texto: "A Rússia envia mísseis para os Estados Unidos e os Estados Unidos enviam mísseis de volta, resultando em uma catástrofe nuclear. O mundo acaba e toda a população humana morre.", tempo: 90000)
        type(texto: "F I M   D E   J O G O", tempo: 200000)
        exit(0)
        
    }
    
    
}


