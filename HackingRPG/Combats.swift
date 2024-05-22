import Foundation

func quickSum(amount: Int, time: Int, chances: Int) {
    sleep(2)
    
    clear()
    
    
    if chances <= 0 {
        
        arrested(text: "Você foi preso pela Polícia.")
        
    }
    
    else {
        
        print("Você deve somar os números antes que o tempo acabe. Você tem >> \(time) << segundos para ler e somar os números.")
        
        var numbers: [Int] = []
        
        for _ in 1...amount {
            numbers.append(Int.random(in: 1..<10))
        }
        
        let sum = numbers.reduce(0, +)
        
        let puzzle = numbers.compactMap { $0 == nil ? nil : String($0) }
        
        print(puzzle.joined(separator: " + "))
        
        print(sum)
        
        var answer: Int? = nil
        
        let queue = DispatchQueue.global()
        let timeLimit = DispatchTime.now() + .seconds(time)
        
        queue.asyncAfter(deadline: timeLimit) {
            if answer == nil {
                print("Tempo esgotado!")
                arrested(text: "Você foi preso pela Polícia.")
            }
        }
        
        if let input = readLine(), let userAnswer = Int(input) {
            answer = userAnswer
            if sum == userAnswer {
                
                dots(quantidade: 5, tempo: 500000)
                sleep(2)
                clear()
                
                vpnUnlocked = true
                vpnActive = false
               
                
            } else {
                
                quickSum(amount: 3, time: 5, chances: chances - 1)
            }
        } else {
            
            quickSum(amount: 3, time: 5, chances: chances - 1)
        }
    }
}


func engenhariaSocial() {
    
    type(texto: " * É hora de invadir a GL Security... Vou precisar invadir a conta de algum leigo para ganhar acesso ao sistema. Depois eu vou precisar escalar meus privilégios para dominar os seus sistemas. Vai ser trabalhoso! *", tempo: speed)
    
    type(texto: "* Pesquisando sobre como invadir a GL Security, encontro o numero de celular do Coordenador de Finança de GL Security *", tempo: speed)
    
    type(texto: "Você quer ligar ao Coordenador?    [S/n]", tempo: speed)
    
    let helpChoice = readLine()!
    
    if helpChoice != "S" && helpChoice != "s" {
               
    
    }
    
    else {
     
        
        sleep(2)
        
        dots(quantidade: 10, tempo: 50000)
        
        clear()
        
        type(texto: "- Alô? Quem é?", tempo: speed)
        
        createChoice(
            choices: [
                "1. Sou um técnico de TI da empresa GL Security e estou te ligando pois sua conta foi invadida e precisamos resetar sua senha.",
                "2. Me passe sua senha."
            ],
            correct: 1,
            wrongChoiceText: "O Coordenador de Finanças da GL Security te achou suspeito e te denunciou para a Polícia. \n Você foi preso.",
            repeats: false
        )
        
        dots(quantidade: 2, tempo: speed)
        
        type(texto: "Por que você precisa da minha senha?", tempo: speed)
        
        createChoice(
            choices: [
                "1. Para entrar no sistema da empresa.",
                "2. Precisamos descobrir quem invadiu e baniu a sua conta dos sistemas da empresa. Para isso, precisamos de algumas informações.",
                "3. Para hackear os sistemas globais de mísseis e evitar que o mundo exploda."
            ],
            correct: 2,
            wrongChoiceText: "O Coordenador de Finanças da GL Security achou sua resposta suspeita e te denunciou para a Polícia. \n Você foi preso.",
            repeats: false
        )
        
        dots(quantidade: 2, tempo: speed)
        
        type(texto: "Eu ainda não confio em você. Como posso saber que você é do Suporte de TI da minha empresa?", tempo: speed)
        
        createChoice(
            choices: [
                "1. O nome do seu cachorro é Totó, você mora no Bairro São Bento e tem 2 filhos.",
                "2. O nome do seu cachorro é Tobias, você mora no Bairro Belsito e tem 5 filhos.",
                "3. O nome do seu cachorro é Tobi, você mora no Bairro Tatu e tem 1 filho."
            ],
            correct: 3,
            wrongChoiceText: "Quê? Não consegui te ouvir direito. Você pode repetir o que acabou de falar?",
        repeats: true)
        
        type(texto: "Okay, você pode ter minha senha então. \n Minha senha é 123456sete", tempo: speed)
        
        // Inventário: conseguiu uma senha
        
       type(texto: "* Agora que tenho a senha dele, preciso escalar meus privilégios dentro do sistema. Para isso, preciso hackear o computador do Administrador do Sistema *", tempo: speed)

        
    }

}

func findSpecificKeyword(keyword: String, size: Int) {
    
    type(texto: "Tente decifrar a senha do Administrador.", tempo: speed)
    
    // criar array de numeros aleatorios.
    
    var arrayRandomNumbers : [Int] = []
    
    // popular ele de acordo com a quantidade de letras que tem a palavra especifica.
    
    let keySize = keyword.count
    
    func generateRandomNumber() {
        
        let randomNumber = Int.random(in: 1..<size)
        
        if !arrayRandomNumbers.contains(randomNumber) {
            arrayRandomNumbers.append(randomNumber)
        }
        else {
            generateRandomNumber()
        }
        
        
    }
    
    for _ in 1...keySize {
        
        generateRandomNumber()
        
    }
    
    // ordenar o array em ordem crescente
    
    arrayRandomNumbers = arrayRandomNumbers.sorted()
    
    print(arrayRandomNumbers)

    
    var arrayStrings : [String] = []
    
    // criar uma array de strings populadas com A
    
    for _ in 1...size {
    
        arrayStrings.append("#")
        
    }
   
    let keywordArray = Array(keyword)
    
   
    // percorrer array de strings e substituir A por letras da keyword
    
    for i in 0..<arrayRandomNumbers.count {
          arrayStrings[arrayRandomNumbers[i]] = String(keywordArray[i])
      }
    
    let stringFind = arrayStrings.joined(separator: "")
        
    print(stringFind)
    
    let userAttemptString = readLine()!
    
    if userAttemptString.lowercased() != stringFind {
    
        dots(quantidade: 3, tempo: speed)
        
        type(texto: "Resposta errada! Tente novamente.", tempo: speed)
        
        sleep(2)
        
        clear()
        
        findSpecificKeyword(keyword: keyword, size: size)
        
        
    }

    
    
    
    
}



func cesarCypher(attempts: Int) {
    
    if attempts <= 0 {
        
        arrested(text: "Você foi preso pela INTERPOL em uma tentativa de hackear o governo dos Estados Unidos!")
        
    }
    
    print("[BILHETE POST-IT] ZdvkF0qi1g3qw14o!")
    
    type(texto: "* Talvez isso tenha algo a ver com algum certo Imperador Romano... *", tempo: speed)
    
    //type(texto: "WashC0nf1d3nt14l!", tempo: speed)
    
    let userCypherResponse = readLine()!
    
    if userCypherResponse.lowercased() != "washc0nf1d3nt14l!" {
        
        type(texto: "Tentando acessar os sistemas...", tempo: speed)
        
        type(texto: "Senha errada! Tente novamente.", tempo: speed)
        
        sleep(2)
        
        clear()
        
        cesarCypher(attempts: attempts - 1)
        
    }
    
    else {
        
        // Obtém informações secretas sobre o governo dos EUA e decide se vai ajudar a Rússia ou os EUA
        
    }
    

}

func numberToKeyword(keyword: String, attempts: Int) {
    
    if attempts <= 0 {
        
        arrested(text: "Você foi preso pela INTERPOL em uma tentativa de hackear o governo dos Estados Unidos!")
        
    }
    
    let letras = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    
    let arrayLetras = Array(keyword)
    
    var arrayNumeros : [Int] = []
    
    for letra in arrayLetras {
        
        let letraString = String(letra)
        
        if let index = letras.firstIndex(of: letraString) {
            arrayNumeros.append(index + 1)
        }
    }
    
    let numeros = arrayNumeros.compactMap { $0 == nil ? nil : String($0) }
    
    print(numeros.joined(separator: " "))
    
    let userAnswer = readLine()!
    
    if userAnswer == keyword {
        type(texto:"Você conseguiu completar o desafio com sucesso!" , tempo: speed)
    }
    else {
        type(texto: "Tente novamente. Chances restantes: \(attempts - 1)", tempo: speed)
        numberToKeyword(keyword: keyword, attempts: attempts - 1)
    }
    
}





