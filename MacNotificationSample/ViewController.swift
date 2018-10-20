//
//  ViewController.swift
//  MacNotificationSample
//
//  Created by SatoKei on 2018/10/20.
//  Copyright © 2018 kei.sato. All rights reserved.
//

import Cocoa

class ViewController: NSViewController {

    @IBOutlet weak var button: NSButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }

    @IBAction func handleButtonTouch(_ sender: Any) {
        // https://qiita.com/arthur87/items/39ce070ae41b8c012dc9
        let notification = NSUserNotification()
        notification.title = "Notification Sample"
        notification.subtitle = "hoge"
        notification.informativeText = "fuga"
        notification.deliveryDate = Date().addingTimeInterval(5)
        //        NSUserNotificationCenter.default.deliver(notification)
        NSUserNotificationCenter.default.scheduleNotification(notification)
    }


}

