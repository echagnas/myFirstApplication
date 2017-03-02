//
//  ViewController.swift
//  myFirstApplication
//
//  Created by Emmanuel Chagnas on 01/03/2017.
//  Copyright © 2017 Emmanuel Chagnas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  // MARK: Properties
  @IBOutlet weak var nameWordTextField: UITextField!
  @IBOutlet weak var wordLabel: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: Actions
  @IBAction func setLabel(_ sender: UIButton) {
    self.wordLabel.text = nameWordTextField.text
  }
}

