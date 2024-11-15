//
//  BaseViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

class BaseViewModel {
    
    var publish: ((any State) -> Void)?
    
    func reduce(action: any Action) {
        fatalError("This method must be overridden.")
    }
    
    func getState() -> any State {
        fatalError("This method must be overridden.")
    }
    
}
