//
//  AppDelegate.swift
//  Cheese
//
//  Created by Daniel Jalkut on 8/28/19.
//  Copyright © 2019 Red Sweater Software. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

	@IBOutlet weak var window: NSWindow!

	var movementMonitor: RSAppMovementMonitor? = nil

	func applicationDidFinishLaunching(_ aNotification: Notification) {

		// Simply create a movement handler early in your app's lifetime
		movementMonitor = RSAppMovementMonitor()

		// If you just want to let the default handler do everything, don't even
		// bother assigning this custom handler. If you want to change the behavior,
		// for example to support an alert option to keep running without relaunching,
		// you could provide that functionality here.
		movementMonitor?.appMovementHandler = { monitor in
			NSLog("App was moved! Letting RSAppMovementMonitor handle it...")
			return true
		}
	}

}

