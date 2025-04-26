//
//  CustomTabBarController.swift
//  GroceryTracker
//
//  Created by Owais on 4/25/25.
//

import UIKit
import SwiftUI

class CustomTabBarController: UITabBarController {

    private let centerButton = UIButton()
    private let customTabBarHeight: CGFloat = 60
    private let horizontalPadding: CGFloat = 14
    private let verticalPadding: CGFloat = 0
    private let bottomPadding: CGFloat = 10

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTabBarAppearance()
        setupCenterButton()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        var tabFrame = tabBar.frame
        tabFrame.size.height = customTabBarHeight
        tabFrame.origin.x = horizontalPadding
        tabFrame.size.width = view.frame.width - (horizontalPadding * 2)
        tabBar.frame = tabFrame
        tabBar.layer.cornerRadius = self.tabBar.bounds.height / 2
        tabBar.layer.masksToBounds = true
    }

    private func setupTabBarAppearance() {
        tabBar.tintColor = #colorLiteral(red: 0.311650902, green: 0.6748944521, blue: 0.3342563212, alpha: 1)
        tabBar.unselectedItemTintColor = .systemGray3
        tabBar.barTintColor = .black
        tabBar.backgroundColor = .black
        tabBar.isTranslucent = true
    }

    private func setupCenterButton() {
        centerButton.translatesAutoresizingMaskIntoConstraints = false
        centerButton.setImage(UIImage(systemName: "viewfinder"), for: .normal)
        centerButton.tintColor = .systemGray3
        centerButton.backgroundColor = #colorLiteral(red: 0.311650902, green: 0.6748944521, blue: 0.3342563212, alpha: 1)
        centerButton.layer.cornerRadius = 27.5
        centerButton.layer.borderWidth = 7
        centerButton.layer.borderColor = UIColor.black.cgColor
        centerButton.addTarget(self, action: #selector(scanTapped), for: .touchUpInside)
        
        view.addSubview(centerButton)
        
        NSLayoutConstraint.activate([
            centerButton.centerXAnchor.constraint(equalTo: tabBar.centerXAnchor),
            centerButton.centerYAnchor.constraint(equalTo: tabBar.topAnchor, constant: 5),
            centerButton.widthAnchor.constraint(equalToConstant: 55),
            centerButton.heightAnchor.constraint(equalToConstant: 55)
        ])
    }

    @objc private func scanTapped() {
        let scanVC = UIHostingController(rootView: ScanTabView())
        scanVC.modalPresentationStyle = .fullScreen
        self.present(scanVC, animated: true, completion: nil)
    }
}
