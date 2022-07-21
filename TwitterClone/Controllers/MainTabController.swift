//
//  MainTabController.swift
//  TwitterClone
//
//  Created by Артём Витинский on 19.07.2022.
//

import UIKit

class MainTabController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    
        configureViewControllers()
        
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
