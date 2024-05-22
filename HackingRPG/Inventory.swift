//
//  Inventory.swift
//  HackingRPG
//
//  Created by GUILHERME FAGGION FABBRI on 20/05/24.
//

import Foundation

func callInventory(quit: Bool) {
    
        var inventoryArray : [String] = []
    
        type(texto: "Você quer consultar seu disco rígido?  [S/n]", tempo: speed)
        
        let userHDChoice = readLine()!
        
        if userHDChoice == "S" || userHDChoice == "s" {
            // Listando itens do inventário e status deles.
            
            print("[INVENTÁRIO] Itens do Disco Rígido de seu PC:")
            
            if vpnUnlocked == true {
                
                inventoryArray.append("VPN")
                
                if vpnActive == true {
                    inventoryTyper(text: "VPN: Ativa")
                }
                
                else {
                    inventoryTyper(text: "VPN: Inativa")
                }
                
            }
        
            
            if inventoryArray.isEmpty {
                print("Você não possui itens em seu disco rígido.")
            }
            
            else {
                var counterArray = 0;
                for i in inventoryArray {
                    
                    counterArray += 1
                    
                    print("\(counterArray). \(i)")
                }
                
                
            }
            
            let inventoryChoice = Int(readLine()!)!
            
            switch inventoryChoice {
                case 1:
                    print("Deseja ativar a VPN?")
                case 2:
                    print("Deseja XXXX")
            default:
                print("Opção inválida")
            }

        }
    
    else {
        
        

    }

}
