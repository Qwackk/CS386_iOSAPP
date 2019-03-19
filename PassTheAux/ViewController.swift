//
//  ViewController.swift
//  PassTheAux
//


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var uiVideoInputField: UITextField!
    @IBOutlet weak var uiVideoSubmitButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //MARK: UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        // TODO: Setup text field input to server to queue song
    }
}

