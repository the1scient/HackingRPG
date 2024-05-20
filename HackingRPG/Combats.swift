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
        
        quickSum(amount: 3, time: 5, chances: 3)

    }

}

