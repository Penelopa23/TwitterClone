//
//  RegistrationController.swift
//  TwitterClone
//
//  Created by Артём Витинский on 23.07.2022.
//

import UIKit

class RegistrationController: UIViewController {
    
    // MARK: - Properties
    
    
    // MARK: - Lyfecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    //MARK: - Selectors
    
    
    //MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .twitterBlue
    }
}
