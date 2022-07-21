//
//  NotificationsController.swift
//  TwitterClone
//
//  Created by Артём Витинский on 20.07.2022.
//

import UIKit

class NotificationsController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        view.backgroundColor = .white
        navigationItem.title = "Notifications"
    }
}
