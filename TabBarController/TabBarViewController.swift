//
//  TabBarViewController.swift
//  TabBarController
//
//  Created by 粘光裕 on 2018/11/3.
//  Copyright © 2018年 com.open.lib. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        addBadgeValue(index: 0, val: "1234") //Set Badge value 
        self.delegate = self //set TabBarViewController as UITabBarControllerDelegate
        self.selectedIndex = 1 //We do not want users access first tab, so we set selectedIndex as 1 first
    
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func addBadgeValue(index: Int, val: String) {
        if let items = self.tabBar.items {
            items[index].badgeValue = val
        }
    }
}


extension TabBarViewController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        if viewController is Page1ViewController {
            return false
        } else {
            return true
        }
    }
}
