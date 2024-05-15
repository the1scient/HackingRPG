import Foundation

    func digitarTexto(texto: String, tempo: Int) {
        
       let fala = Array(texto)
       
        setbuf(__stdoutp, nil);
        for i in fala {
            print(i, terminator: "")
            usleep(useconds_t(tempo))
        }
        
        print("\n")
        
    }
    
    
    func pontinhos(quantidade: Int, tempo: Int) {
        
        for _ in 1...quantidade {
            
            usleep(useconds_t(tempo))
            print("... \n")
            
        }
        
    }
    
    func limparConsole() {
        print("\u{001B}[2J")
    }
    
    
