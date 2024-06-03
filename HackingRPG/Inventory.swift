//
//  Inventory.swift
//  HackingRPG
//
//  Created by GUILHERME FAGGION FABBRI on 20/05/24.
//

import Foundation

func inventoryDecision() {
    
    
    type(texto: "Você quer consultar seu disco rígido/inventário?  [S/n]", time: speed)
    let userHDChoice = readLine()!
    
    
    if userHDChoice == "S" || userHDChoice == "s" {
        getInventory()
    }
    
    
    else {
        
    }
    
}

func getInventory() {
    
    var inventoryArray : [String] = []
    
    // Listando itens do inventário e status deles.
    
    print("[INVENTÁRIO] Itens do Disco Rígido de seu PC:")
    
    if vpnUnlocked == true {
        
        inventoryArray.append("VPN")
        
        if vpnActive == true {
            inventoryTyper(text: "VPN: " +  "Ativa".green())
        }
        
        else {
            inventoryTyper(text: "VPN: " +  "Inativa".red())
        }
        
    }
    
    if passwordUnlocked == true {
        
        inventoryArray.append("Senha")
        
        
        
    }
    
    
    separator()
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
    
    print("Qual item deseja acessar? Digite 0 para sair do Inventário. ")
    
    let inventoryChoice = Int(readLine()!)!
    
    switch inventoryChoice {
    case 1:
        
        if vpnActive == false {
            
            vpnActive = true
            
        }
        
        else {
            
            vpnActive = false
            
        }
        
        getInventory()

        
    case 2:
        
        type(texto: "Senha: " + "7246".cyan(), time: speed)
        
        getInventory()
        
    default:
        type(texto: "$ sudo exit", time: speed)
        sleep(2)
        clear()
        break
    }
    
 
    

   
    
    
    
}
