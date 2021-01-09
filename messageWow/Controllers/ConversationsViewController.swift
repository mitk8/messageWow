//
//  ViewController.swift
//  messageWow
//
//  Created by Андрей Митько on 09/01/2021.
//

import UIKit

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        //Check if loged in
        let isLogged_in = UserDefaults.standard.bool(forKey: "logged_in")
        
        if !isLogged_in {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
        
    }


}

