import Foundation


    func inicio() {
        
        limparConsole()

        pontinhos(quantidade: 5, tempo: 900000)

        digitarTexto(texto: "[JORNALISTA]: As notícias se espalham de que a Rússia irá enviar um míssil nuclear para os Estados Unidos. A população entra em terror com uma iminente guerra nuclear...", tempo: 50000)

        digitarTexto(texto: "[JORNALISTA 2]: Diversos roubos estão acontecendo... o caos está se instaurando nas ruas das cidades de todo o Brasil e do mundo...", tempo: 50000)

        pontinhos(quantidade: 2, tempo: 500000)

        limparConsole()

        digitarTexto(texto: "[JORNALISTA]: A pergunta agora é: como o Mundo poderá ser salvo de uma possível catástrofe nuclear?", tempo: 100000)


        pontinhos(quantidade: 5, tempo: 900000)

        sleep(2)

        limparConsole()

        digitarTexto(texto: "* Será que eu devo ajudar? Tenho diversos conhecimentos sobre hacking mas não sei se teria os recursos suficientes... *", tempo: 50000)

        digitarTexto(texto: "* Se eu escolher ajudar... preciso invadir diversos servidores, conseguir ferramentas sigilosas de hacking do governo e muito mais... mas se eu não ajudar...  *", tempo: 50000)

        digitarTexto(texto: "* Se eu não ajudar talvez o mundo acabe... *", tempo: 50000)

        pontinhos(quantidade: 3, tempo: 90000)

        sleep(2)

        digitarTexto(texto: "Você gostaria de ajudar?   [S/n]", tempo: 90000)

        let escolha = readLine()

        if escolha == "S" || escolha == "s" {
            
            print("test")
            
        }

        else {
            
            digitarTexto(texto: "A Rússia envia mísseis para os Estados Unidos e os Estados Unidos enviam mísseis de volta, resultando em uma catástrofe nuclear. O mundo acaba e toda a população humana morre.", tempo: 90000)
            digitarTexto(texto: "F I M   D E   J O G O", tempo: 100000)
            exit(0)
            
        }

        
    }


