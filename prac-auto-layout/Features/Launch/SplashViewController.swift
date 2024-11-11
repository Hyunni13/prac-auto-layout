//
//  SplashViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI
import UIKit

final class SplashViewController: BaseViewController {
    
    lazy var viewModel: SplashViewModel = {
        return SplashViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getViewModel().handleEvent(SplashEvent.goHome)
    }
    
    override func initUI() {
        setupViews()
    }
    
    override func handleState(_ state: any UIState) { }
    
    override func handleSideEffect(_ effect: any SideEffect) {
        guard let effect = effect as? SplashSideEffect else { return }
        
        switch effect {
        case .goHome:
            goHome()
        }
    }
    
    override func getViewModel() -> BaseViewModel {
        return viewModel
    }
    
    private func setupViews() {
        let splash = LaunchView()
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
    
    private func goHome() {
        //        let storyboard = UIStoryboard(name: "Home", bundle: nil)
        //        let homeViewController = storyboard.instantiateViewController(withIdentifier: "HOME")
        let homeViewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeViewController)
        navigationController.navigationBar.isHidden = true
        navigationController.modalPresentationStyle = .fullScreen
        
        present(navigationController, animated: true)
    }
    
}
