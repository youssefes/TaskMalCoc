//
//  SignUPViewController.swift
//  Task
//
//  Created by youssef on 4/14/21.
//  Copyright © 2021 youssef. All rights reserved.
//

import UIKit

class SignUPViewController:  BaseWireFrame<SignUpViewModel>{
    
    @IBOutlet weak var showPassword: UIImageView!
    @IBOutlet weak var PasswordTf: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        addTapGestureInImage()
        // Do any additional setup after loading the view.
        
    }

    
    func addTapGestureInImage(){
        
        showPassword.isUserInteractionEnabled = true
        let gesturemap = UITapGestureRecognizer(target: self, action: #selector(showMap))
        gesturemap.numberOfTapsRequired = 1
        showPassword.addGestureRecognizer(gesturemap)
    }
    
    @objc func showMap(){
        PasswordTf.isSecureTextEntry.toggle()
    }
    
    override func bind(ViewModel: SignUpViewModel) {
        
    }

    @IBAction func signUp(_ sender: Any) {
    }
}

