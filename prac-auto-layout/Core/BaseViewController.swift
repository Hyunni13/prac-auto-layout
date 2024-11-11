//
//  BaseViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/23/24.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        initUI()
        
        getViewModel().publish = { [weak self] state in
            guard let self = self else { return }
            subscribe(state)
        }
    }
    
    func initUI() {
        fatalError("This method must be overridden.")
    }
    
    func subscribe(_ state: any State) {
        fatalError("This method must be overridden.")
    }
    
    func getViewModel() -> BaseViewModel {
        fatalError("This method must be overridden.")
    }
    
}
