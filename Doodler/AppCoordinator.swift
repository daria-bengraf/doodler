//
//  AppCoordinator.swift
//  Doodler
//
//  Created by Dariya Bengraf on 05.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import UIKit
class AppCoordinator {
    
    private var window = UIWindow()
    
    init(window:UIWindow) {
        self.window = window
    }
    
    func start() {
        window.makeKeyAndVisible()
        let controller = DoodlingViewController()

        window.rootViewController = UINavigationController(rootViewController: controller)
    }
}
