//
//  BaseViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

class BaseViewModel {
    
    var publish: ((any State) -> Void)?
    
    init() {
        getEnvironment().publish = { [weak self] effect in
            guard let self = self else { return }
            
            subscribeEffect(effect)
        }
    }
    
    func reduce(_ state: any State, _ action: any Action) {
        fatalError("This method must be overridden.")
    }
    
    func subscribeEffect(_ effect: any Effect) {
        fatalError("This method must be overridden.")
    }
    
    func getEnvironment() -> BaseEnvironment {
        fatalError("This method must be overridden.")
    }
    
}
