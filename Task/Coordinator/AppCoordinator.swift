//
//  AppCoordinator.swift
//  Opportunities
//
//  Created by youssef on 4/14/21.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import UIKit

protocol Coordinator {
    var mainNavigator : MainNavigator {get}
    var navigationController : UINavigationController? {get}
    
    func dismiss()
}
class AppCoordinator : Coordinator{
    
    
    var firstTimeOpen: Bool = true {
        didSet{
            start()
        }
    }
    
    var isLogIn : Bool = false {
        didSet{
            start()
        }
    }
    lazy var mainNavigator : MainNavigator = {
          return .init(coordintor: self)
    }()
    
    
    let window : UIWindow
    init(Window : UIWindow = UIWindow()) {
        self.window = Window
    }
    
    
    
    func dismiss() {
        self.navigationController?.popViewController(animated: true)
    }
    var navigationController : UINavigationController? {
        
        return UINavigationController()
    }
    
    func start()  {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }
    
    func reset() {
          let rootController: UIWindow = ((UIApplication.shared.delegate?.window)!)!
          rootController.rootViewController = rootViewController
      }
    
    var rootViewController : UIViewController {
        
        let welcome = mainNavigator.viewController(for: .Welcome)
        return welcome
    }
}
