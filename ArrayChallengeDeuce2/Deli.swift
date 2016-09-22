//
//  Deli.swift
//  ArrayChallengeDeuce2
//
//  Created by Jim Campagno on 9/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//




class Deli {
    
    var line: [String] = []
    
    // 1
    func addNameToLine(name: String) -> String {
                
        
        
        //Adding Billy and Meg to the front of the line. If anyone else, just append to the line
        switch name {
        case "Billy Crystal":
            line.insert("Billy Crystal", at: 0)
        
        case "Meg Ryan" :
            line.insert("Meg Ryan", at: 0)
            
        default:
            line.append(name)
        }
        
        
        //Greetings

        
        if line.count == 1 {
            
            return "Welcome \(name), you're first in line!"
        }
        
        else if name == "Billy Crystal" {
            
            return "Welcome Billy Crystal! You can sit wherever you like."
        }
        
        else if name == "Meg Ryan" {
            
            return "Welcome Meg Ryan! You can sit wherever you like."
        }
        
        else {
            
            return "Welcome \(name), you're number \(line.count) in line."
        }
        

        
    }

    
    // 2
    func nowServing() -> String {
        
        if line == [] {
            
            return "There is no one to be served."
        }
        
        else {
            
            return "Now serving \(line.remove(at: 0))!"
        }
    }

    
    
    
    // 3
    func lineDescription() -> String {
        
        var numberAndName = "The line is:"
        
        if line.isEmpty {
            
            return "The line is currently empty."
        }
        
        else {
            
            for (index, eachName) in line.enumerated() {
                
                let numbering = index + 1
                
                numberAndName = numberAndName + ("\n\(numbering). \(eachName)")
            }
            
        }
        
        return numberAndName
    }
    
}
