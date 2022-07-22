//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Артём Витинский on 19.07.2022.
//

import UIKit

class MainTabController: UITabBarController {
        
    //MARK: - Properties
    
    let actionButton: UIButton = {
        let button = UIButton(type: .system)
        button.tintColor = .white
        button.backgroundColor = .twitterBlue
        button.setImage(UIImage(named: "new_tweet"), for: .normal)
        button.addTarget(self, action: #selector(actionButtonTapped), for: .touchUpInside)
        return button
    }()
    
    
    //MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    
        configureTabBarBounds()
        configureViewControllers()
        configureUI()
        
    }
    
    //MARK: - Selectors
    
    @objc func actionButtonTapped() {
        print(123)
    }
    
    //MARK: - Heplers
    
    func configureUI() {
        view.addSubview(actionButton)
        actionButton.anchor(bottom: view.safeAreaLayoutGuide.bottomAnchor, right: view.rightAnchor, paddingBottom: 64, paddingRight: 16, width: 56, height: 56)
        actionButton.layer.cornerRadius = 56 / 2
    }
    
    
    func configureTabBarBounds() {
        let apperance = UITabBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.backgroundColor = .white
        tabBar.standardAppearance = apperance
        tabBar.scrollEdgeAppearance = tabBar.standardAppearance
    }
    
    func configureViewControllers() {
        
        let feed = templateNavigationController(image: UIImage(named: "home_unselected")!, rootViewController: FeedController())
        
        let explore = templateNavigationController(image: UIImage(named: "search_unselected")!, rootViewController: ExplorerController())
        
        let notifications = templateNavigationController(image: UIImage(named: "like_unselected")!, rootViewController: NotificationsController())
        
        let converstions = templateNavigationController(image: UIImage(named: "ic_mail_outline_white_2x-1")!, rootViewController: ConversationsController())
        
        viewControllers = [feed, explore, notifications, converstions]
    }
    
    func templateNavigationController(image: UIImage, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = image
        nav.navigationBar.barTintColor = .white
        let apperance = UINavigationBarAppearance()
        apperance.configureWithOpaqueBackground()
        apperance.backgroundColor = .white
        nav.navigationBar.standardAppearance = apperance
        nav.navigationBar.scrollEdgeAppearance = nav.navigationBar.standardAppearance
        return nav
    }
    
 
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
