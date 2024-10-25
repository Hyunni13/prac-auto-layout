//
//  HomeViewController.swift
//  prac-auto-layout
//
//  Created by James on 10/24/24.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Notification Icon
    private lazy var notificationIcon: UIImageView = {
        let icon = UIImageView(image: UIImage(systemName: "bell.fill"))
        icon.translatesAutoresizingMaskIntoConstraints = false
        icon.contentMode = .scaleAspectFit
        icon.tintColor = .appBlue
        return icon
    }()
    
    // StackView
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.alignment = .fill
        stack.spacing = 10
        return stack
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.appBackground
        
        (0..<10).forEach { _ in
            stackView.addArrangedSubview(AccountView())
        }
        
        view.addSubview(notificationIcon)
        view.addSubview(stackView)
        pinNotificationIcon()
        pinStackView()
    }
    
    private func pinNotificationIcon() {
        NSLayoutConstraint.activate([
            notificationIcon.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 20),
            notificationIcon.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20),
            notificationIcon.widthAnchor.constraint(equalToConstant: 24),
            notificationIcon.heightAnchor.constraint(equalToConstant: 24),
        ])
    }
    
    private func pinStackView() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: notificationIcon.bottomAnchor, constant: 20),
            stackView.bottomAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.bottomAnchor,
                constant: -20),
            stackView.leadingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.leadingAnchor,
                constant: 20),
            stackView.trailingAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.trailingAnchor,
                constant: -20),
        ])
    }
    
}
