
import Foundation

func arrested(text: String) {
    
    dots(quantidade: 5, time: 50000)
    
    sleep(2)
    
    clear()
    
    dots(quantidade: 5, time: 50000)
    
    type(texto: text, time: 50000)
    
    gameOver()
    
}

func gameOver() {
    
    type(texto: "> > > >  F I M   D E   J O G O  < < < <", time: 90000)
    
    print("\n")
    
    print("Deseja jogar novamente?   [S/n]")
    
    let playAgain = readLine()
    
    if playAgain == "S" || playAgain == "s" {
        
        start()
        
    }
    else {
        print("Créditos: Guilherme Fabbri, Luisiana Ramirez")
        exit(0);
    }
    
}

func goodEnding() {
    
    
    type(texto: "\(username), você conseguiu desativar os computadores centrais da Rússia.", time: speed)
    type(texto: "A Rússia foi incapaz de enviar mísseis aos Estados Unidos...", time: speed)
    
    
}
