//
//  ViewController.swift
//  PassTheAux
//


import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var uiVideoInputField: UITextField!
    @IBOutlet weak var uiVideoSubmitButton: UIButton!
    @IBOutlet weak var uiConnectionCode: UILabel!
    @IBOutlet weak var uiCreatedCode: UILabel!
    
    // TODO: ADD YOUTUBE REGEX

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
    
    // MARK: ACTIONS
    @IBAction func uiCopyCodeButton(_ sender: Any) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = uiCreatedCode.text
        print("Copied to clipboard")
    }
    
    @IBAction func uiQueueSong(_ sender: UIButton) {
        let songURL = uiVideoInputField.text
        if isYoutubeURL(urlString: songURL) {
            // TODO: Send to server
        } else {
            // TODO: Yell at client
        }
        // TODO: enquire via this url
    }
    
    func isYoutubeURL(urlString: String?) -> Bool {
        // TODO: Implement check to see if valid youtube url
        return true
    }
}

