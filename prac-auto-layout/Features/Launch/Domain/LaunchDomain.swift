//
//  LaunchDomain.swift
//  prac-auto-layout
//
//  Created by James on 10/22/24.
//

struct LaunchState: State {
    enum Destination {
        case home
        case none
    }
    
    var destination: Destination = .home
}

enum LaunchAction: Action {
    case goHomeView
}
