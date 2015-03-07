//
//  InterfaceController.swift
//  WatchKitDemo WatchKit Extension
//
//  Created by Evgenii Neumerzhitckii on 7/03/2015.
//  Copyright (c) 2015 Evgenii Neumerzhitckii. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
  @IBOutlet weak var penguinOneImage: WKInterfaceImage!
  @IBOutlet weak var penguinTwoImage: WKInterfaceImage!

  var imageNames = [
    "penguin_one.png",
    "penguin_two.png"
  ]

  override func awakeWithContext(context: AnyObject?) {
    super.awakeWithContext(context)

    // Configure interface objects here.
  }

  override func willActivate() {
    // This method is called when watch view controller is about to be visible to user
    super.willActivate()
  }

  override func didDeactivate() {
    // This method is called when watch view controller is no longer visible
    super.didDeactivate()
  }

  @IBAction func onQuaButtonTapped() {
    imageNames = imageNames.reverse()
    penguinOneImage.setImageNamed(imageNames[0])
    penguinTwoImage.setImageNamed(imageNames[1])
  }
}
