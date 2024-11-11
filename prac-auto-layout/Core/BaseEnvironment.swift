//
//  BaseEnvironment.swift
//  prac-auto-layout
//
//  Created by James on 11/11/24.
//

class BaseEnvironment {
    
    var publish: ((any Effect) -> Void)?
    
    func handleEffect() {
        fatalError("This method must be overridden.")
    }
    
}
