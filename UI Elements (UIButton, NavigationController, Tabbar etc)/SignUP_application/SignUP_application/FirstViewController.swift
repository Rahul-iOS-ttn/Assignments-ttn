//
//  FirstViewController.swift
//  SignUP_application
//
//  Created by TTN on 04/03/21.
//  Copyright © 2021 TTN. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var nextButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func viewWillAppear(_ animated: Bool) {
        //navigation bar title set
        navigationItem.title = "HOME"
    }
    @IBAction func nextButtonTapped() {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            let secondVC = storyboard.instantiateViewController(withIdentifier: "SecondViewController")
            navigationController?.pushViewController(secondVC, animated: true)
        }
}
