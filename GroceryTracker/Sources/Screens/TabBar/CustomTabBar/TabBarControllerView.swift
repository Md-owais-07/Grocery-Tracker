//
//  TabBarControllerView.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import UIKit
import SwiftUI

struct TabBarControllerView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UITabBarController {
        let tabBarController = CustomTabBarController()
        
        let homeTabView = UIHostingController(rootView: HomeTabView())
        let favTabView = UIHostingController(rootView: FavouriteTabView())
        let scanTabView = UIViewController()
        let notificationTabView = UIHostingController(rootView: NotificationTabView())
        let profileTabView = UIHostingController(rootView: ProfileTabView())
        
        let homeNav = UINavigationController(rootViewController: homeTabView)
        let favNav = UINavigationController(rootViewController: favTabView)
        let notificationNav = UINavigationController(rootViewController: notificationTabView)
        let profileNav = UINavigationController(rootViewController: profileTabView)
        
        [homeNav, favNav, notificationNav, profileNav].forEach { nav in
            nav.setNavigationBarHidden(true, animated: false)
        }
        
        homeTabView.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "house"), tag: 0)
        favTabView.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "list.bullet"), tag: 1)
        scanTabView.tabBarItem = UITabBarItem(title: nil, image: nil, tag: 2)
        notificationTabView.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "bell"), tag: 3)
        profileTabView.tabBarItem = UITabBarItem(title: nil, image: UIImage(systemName: "person"), tag: 4)
        
        tabBarController.viewControllers = [homeNav, favNav, scanTabView, notificationNav, profileNav]
        
        return tabBarController
    }
    
    func updateUIViewController(_ uiViewController: UITabBarController, context: Context) {
        //
    }
}
