//
//  AppDelegate.swift
//  ProportionalSize
//
//  Created by vitorsilveira31@gmail.com on 02/21/2020.
//  Copyright (c) 2020 vitorsilveira31@gmail.com. All rights reserved.
//

import UIKit
import ProportionalSize

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        defaultWidthSize = 375.0

        return true
    }
}
