//
//  ViewController.swift
//  messageWow
//
//  Created by Андрей Митько on 09/01/2021.
//

import UIKit
import FirebaseAuth
import FirebaseDatabase

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        //Check if loged in
        validateAuth()
        
    }
    
    private func validateAuth() {
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }


}

