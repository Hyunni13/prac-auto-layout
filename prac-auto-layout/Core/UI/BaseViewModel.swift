//
//  BaseViewModel.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

class BaseViewModel {
    
    var publish: ((any State) -> Void)?
    
    func reduce(_ state: any State, _ action: any Action) -> State {
        fatalError("This method must be overridden.")
    }
    
}
