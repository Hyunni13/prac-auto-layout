//
//  SplashViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI
import UIKit

class SplashViewController: UIViewController {
    
    private lazy var viewModel: SplashViewModel = {
        return SplashViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Logger.log()
        
        getViewModel().uiState = { [weak self] state in
            guard let self = self else { return }
            
            self.handleUIState(state)
        }
        
        getViewModel().sideEffect = { [weak self] effect in
            guard let self = self else { return }
            
            self.handleSideEffect(effect)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        Logger.log()
        
        getViewModel().handleEvent(.initUI)
    }
    
    private func handleUIState(_ state: SplashUIState) {
        Logger.log(state)
        
        setupViews()
    }
    
    private func handleSideEffect(_ effect: SplashSideEffect) {
        Logger.log(effect)
        
        switch effect {
        case .goHome:
            goHome()
        }
    }
    
    private func goHome() {
        let homeViewController = HomeViewController()
        homeViewController.modalPresentationStyle = .fullScreen
        
        present(homeViewController, animated: true)
    }
    
    private func setupViews() {
        let splash = SplashView()
        let splashHost = UIHostingController(rootView: splash)
        addChild(splashHost)
        view.addSubview(splashHost.view)
        didMove(toParent: self)
        
        splashHost.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            splashHost.view.topAnchor.constraint(equalTo: view.topAnchor),
            splashHost.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            splashHost.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            splashHost.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func getViewModel() -> SplashViewModel {
        return viewModel
    }
    
}
