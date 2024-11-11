//
//  LaunchViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/18/24.
//

import SwiftUI
import UIKit

final class LaunchViewController: BaseViewController {
    
    private lazy var viewModel: LaunchViewModel = {
        return LaunchViewModel()
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        getViewModel().reduce(action: LaunchAction.goHomeView)
    }
    
    override func initUI() {
        render()
    }
    
    override func subscribe(_ newState: any State) {
        guard let newState = newState as? LaunchState else { return }
        handleState(newState)
    }
    
    override func getViewModel() -> BaseViewModel {
        return viewModel
    }
    
    // MARK: STATE HANDLING
    private func handleState(_ state: LaunchState) {
        // 내비게이션 확인
        switch state.destination {
        case .home:
            goHomeView()
        case .none:
            return
        }
    }
    
}


extension LaunchViewController {
    
    private func render() {
        let launchView = LaunchView()
        let launchViewHost = UIHostingController(rootView: launchView)
        addChild(launchViewHost)
        view.addSubview(launchViewHost.view)
        didMove(toParent: self)
        
        launchViewHost.view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            launchViewHost.view.topAnchor.constraint(equalTo: view.topAnchor),
            launchViewHost.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            launchViewHost.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            launchViewHost.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
    }
    
    private func goHomeView() {
        let homeViewController = HomeViewController()
        let navigationController = UINavigationController(rootViewController: homeViewController)
        navigationController.navigationBar.isHidden = true
        navigationController.modalPresentationStyle = .fullScreen
        
        present(navigationController, animated: true)
    }
    
}
