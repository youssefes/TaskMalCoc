//
//  WelcomeViewController.swift
//  Task
//
//  Created by youssef on 4/14/21.
//  Copyright © 2021 youssef. All rights reserved.
//

import UIKit
import SwiftSVG

class WelcomeViewController: BaseWireFrame<WelcomeViewModel> {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewsInVC()
    }
    
    override func bind(ViewModel: WelcomeViewModel) {
        
    }
    
    func setUpViewsInVC() {
        
    }
    
    
    @IBAction func SignUpBtn(_ sender: Any) {
        let SignUp = coordinator.mainNavigator.viewController(for: .SignUp)
        SignUp.modalPresentationStyle = .overFullScreen
        present(SignUp, animated: true, completion: nil)
    }
    
    @IBAction func LoginBtn(_ sender: Any) {
        let login = coordinator.mainNavigator.viewController(for: .Login)
        login.modalPresentationStyle = .overFullScreen
        present(login, animated: true, completion: nil)
    }
}
