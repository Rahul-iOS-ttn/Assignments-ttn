//
//  ViewController.swift
//  SignUP_application
//
//  Created by TTN on 04/03/21.
//  Copyright © 2021 TTN. All rights reserved.
//

import UIKit
import SwiftUI

//Toast message implementation
extension UIViewController {
    
    func showToast(message : String, font: UIFont) {
        
        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 100, y: self.view.frame.size.height-100, width: 200, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.font = font
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.alpha = 1.0
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 4.0, delay: 0.1, options: .curveEaseOut, animations: {
            toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var signUpButton: UIButton!
    @IBOutlet weak var switchPrivate: UISwitch!
//    var isPrivate : Bool = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    
    @IBAction func signUpButtonTapped() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let firstVC = storyboard.instantiateViewController(withIdentifier: "FirstViewController")
        
        navigationController?.pushViewController(firstVC, animated: true)
    }
//    Not Working for Now....
    @IBAction func switchPrivateTapped() {
//        ContentView()
        if(switchPrivate.isOn){
            print("Your account is private now")
            self.showToast(message: "Your account is private now", font: .systemFont(ofSize: 12.0))
            switchPrivate.setOn(true, animated: false)
        } else {
            print("Your account is public now")
            self.showToast(message: "Your account is public now", font: .systemFont(ofSize: 12.0))
            switchPrivate.setOn(false, animated: false)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.title = "SIGN UP"
    }
    

}
