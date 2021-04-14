//
//  LogInVC.swift
//  Task
//  Created by youssef on 4/14/21.
//  Copyright © 2021 youssef. All rights reserved.
//

import UIKit

class LogInVC: BaseWireFrame<LoginViewModel> {
    @IBOutlet weak var nameTf: UITextField!
    
    @IBOutlet weak var showPassword: UIImageView!
    @IBOutlet weak var passwordTf: UITextField!
    @IBOutlet weak var signUPBtn: UIButton!
    @IBOutlet weak var containerStack: UIStackView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }


      
    override func bind(ViewModel: LoginViewModel) {
        
    }
    
    func addTapGestureInImage(){
        
        showPassword.isUserInteractionEnabled = true
        let gesturemap = UITapGestureRecognizer(target: self, action: #selector(showMap))
        gesturemap.numberOfTapsRequired = 1
        showPassword.addGestureRecognizer(gesturemap)
    }
    
    @objc func showMap(){
        passwordTf.isSecureTextEntry.toggle()
    }
    
    @objc func handelSignUp(){
        
    }
    func setupUI(){
        
        addTapGestureInImage()
        
        let attrbiutedTitle = NSMutableAttributedString(string: "Do not have account? ", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 16),NSAttributedString.Key.foregroundColor : UIColor.black])
        attrbiutedTitle.append(NSAttributedString(string: "SignUp", attributes: [NSAttributedString.Key.font : UIFont.boldSystemFont(ofSize: 15), NSAttributedString.Key.foregroundColor : UIColor.rgb(red: 111, green: 53, blue: 165)]))
               signUPBtn.setAttributedTitle(attrbiutedTitle, for: .normal)
    }
    @IBAction func signUp(_ sender: Any) {
        
        let SignUp = coordinator.mainNavigator.viewController(for: .SignUp)
        SignUp.modalPresentationStyle = .overFullScreen
        present(SignUp, animated: true, completion: nil)
    }
    @IBAction func loginBtn(_ sender: Any) {
    }
}
