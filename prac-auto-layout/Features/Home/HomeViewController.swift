//
//  HomeViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/11/24.
//

import UIKit

final class HomeViewController: UIViewController {
    
    private let viewModel = HomeViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        getViewModel().sideEffect = { [weak self] event in
            guard let self else { return }
            
            self.handleEffect(event)
        }
    }

    private func getViewModel() -> HomeViewModel {
        return viewModel
    }

    private func handleEffect(_ event: HomeEvent) {
        switch event {
        case .logging:
            Logger.log()
        }
    }
    
}
