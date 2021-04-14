//
//  MainNavigator.swift
//  Opportunities
//
//  Created by youssef on 4/14/21.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import UIKit

class MainNavigator : Navigator {
    
    var coordinator: Coordinator
    
    enum Destination {
        case Welcome
        case Login
        case SignUp
    }
    required init(coordintor: Coordinator) {
        self.coordinator = coordintor
    }
    
    func viewController(for destination: MainNavigator.Destination) -> UIViewController {
        
        switch destination {
        case .Welcome:
            let homeViewModel = WelcomeViewModel()
            let view = WelcomeViewController(ViewModel: homeViewModel, coordinator: coordinator)
            return view
        
        case .Login:
            let loginViewModel = LoginViewModel()
            let view = LogInVC(ViewModel: loginViewModel, coordinator: coordinator)
            return view
        case .SignUp:
            let signUpViewModel = SignUpViewModel()
            let view = SignUPViewController(ViewModel: signUpViewModel, coordinator: coordinator)
            return view
        }
    }
    
}
