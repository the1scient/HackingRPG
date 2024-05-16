import Foundation

var username : String = "";

//start()

print("Você deve somar os números antes que o tempo acabe. Você tem >> 5 << segundos para ler e somar os números.")
quickSum(amount: 3, time: 5)

// Evitar que o programa encerre no final
RunLoop.main.run()
