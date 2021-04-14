//
//  BaseWireFrame.swift
//  Opportunities
//
//  Created by youssef on 4/14/21.
//  Copyright © 2020 youssef. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import NVActivityIndicatorView

class BaseWireFrame <T>: UIViewController {
    var vieeModel : T!
    var coordinator : Coordinator!

    init(ViewModel : T, coordinator : Coordinator) {
        self.vieeModel = ViewModel
        self.coordinator = coordinator
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bind(ViewModel: vieeModel)
    }


    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    func bind(ViewModel : T) {
        fatalError("please Override the bind Function")
        
    }
    
    
}
