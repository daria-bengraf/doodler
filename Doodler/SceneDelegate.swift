//
//  SceneDelegate.swift
//  Doodler
//
//  Created by Dariya Bengraf on 01.01.2021.
//  Copyright © 2021 Dariya Bengraf. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

   var window: UIWindow?

       var appCoordinator: AppCoordinator?

       func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
           
           guard let scene = (scene as? UIWindowScene) else { return }
           let window = UIWindow(windowScene: scene)
           
           appCoordinator = AppCoordinator(window: window)
           appCoordinator?.start()
           
       }
   }
