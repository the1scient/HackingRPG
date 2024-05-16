import Foundation

func quickSum(amount: Int, time: Int) {
    var numbers: [Int] = []
    
    for _ in 1...amount {
        numbers.append(Int.random(in: 1..<10))
    }
    
    let sum = numbers.reduce(0, +)
    
    let puzzle = numbers.compactMap { $0 == nil ? nil : String($0) }
    
    print(puzzle.joined(separator: " + "))
    
    var answer: Int? = nil
    
    let queue = DispatchQueue.global()
    let timeLimit = DispatchTime.now() + .seconds(time)
    
    queue.asyncAfter(deadline: timeLimit) {
        if answer == nil {
            print("Tempo esgotado!")
            exit(0)
        }
    }
    
    if let input = readLine(), let userAnswer = Int(input) {
        answer = userAnswer
        if sum == userAnswer {
            print("Correto!")
        } else {
            print("Incorreto!")
        }
    } else {
        print("Entrada inválida!")
    }
}


func engenhariaSocial() {
    
    
    
    
    
}

