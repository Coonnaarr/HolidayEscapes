//
//  WinnerItalyViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 13.09.21.
//

import UIKit

class WinnerItalyViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func backToBeginning(_ sender: UIButton) {
        
        
        
        performSegue(withIdentifier: "backToBeginning", sender: self)
        
    }
    
}
    
    

