//
//  ViewController.swift
//  myFirstApplication
//
//  Created by Emmanuel Chagnas on 01/03/2017.
//  Copyright © 2017 Emmanuel Chagnas. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  
  // MARK: Properties
  @IBOutlet weak var nameWordTextField: UITextField!
  @IBOutlet weak var wordLabel: UILabel!
  @IBOutlet weak var imageView: UIImageView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    nameWordTextField.delegate = self
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // MARK: Actions
  @IBAction func setLabel(_ sender: UIButton) {
    self.wordLabel.text = "Orange"
  }
  
  func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
    dismiss(animated: true, completion: nil)
  }
  
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
    guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else{
      fatalError("Expected a dictionary containing an image")
    }
    imageView.image = selectedImage
    
    dismiss(animated: true, completion: nil)
  }
  
  // MARK: UITextFieldDelegate
  
  func textFieldShouldReturn(_ textField: UITextField) -> Bool {
    
    //Hide the keyboard
    nameWordTextField.resignFirstResponder()
    
    return true
  }
  
  func textFieldDidEndEditing(_ textField: UITextField) {
    self.wordLabel.text = textField.text
  }
  
  @IBAction func selectImageFromPhotoLibrary(_ sender: UITapGestureRecognizer) {
    //Hide the keyboard
    nameWordTextField.resignFirstResponder()
    
    let imagePickerController = UIImagePickerController()
    imagePickerController.sourceType = .photoLibrary
    imagePickerController.delegate = self
    present(imagePickerController, animated: true, completion: nil)
  }
}

