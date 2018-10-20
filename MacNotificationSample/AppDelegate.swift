//
//  AppDelegate.swift
//  MacNotificationSample
//
//  Created by SatoKei on 2018/10/20.
//  Copyright © 2018 kei.sato. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {



    func applicationDidFinishLaunching(_ aNotification: Notification) {
        // Insert code here to initialize your application
        NSUserNotificationCenter.default.delegate = self
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

extension AppDelegate: NSUserNotificationCenterDelegate {

    func userNotificationCenter(_ center: NSUserNotificationCenter, didActivate notification: NSUserNotification) {
        // 通知をタップされた時に呼ばれる
    }

    func userNotificationCenter(_ center: NSUserNotificationCenter, didDeliver notification: NSUserNotification) {
        // アプリが前面にいるときは、通知でないけど、ここは呼ばれる
        if NSApplication.shared.isActive {
            // https://qiita.com/fhisa/items/06d05b25229ee78e44f2
            let alert = NSAlert()
            alert.messageText = notification.title ?? ""
            alert.informativeText = notification.informativeText ?? ""
            alert.runModal()
        }


    }
}

