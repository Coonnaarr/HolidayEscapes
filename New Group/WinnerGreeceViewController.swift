//
//  WinnerGreeceViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 15.09.21.
//

import UIKit

class WinnerGreeceViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backToBeginning(_ sender: UIButton) {
        
        performSegue(withIdentifier: "backToBeginning", sender: self)
    }
    

}
