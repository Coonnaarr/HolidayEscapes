//
//  FlyingViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 10.09.21.
//

import UIKit

class FlyingViewController: UIViewController {
    
    
    var italy = Country(name: "italy")
    var greece = Country(name: "greece")
    var uk = Country(name: "uk")
    var austria = Country(name: "austria")
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func noButton(_ sender: UIButton) {
        
        countries[0].incrementScore()
        countries[3].incrementScore()
        
        performSegue(withIdentifier: "questionFour", sender: self)
    }
    
    
    @IBAction func yesButton(_ sender: UIButton) {
        
        countries[1].incrementScore()
        countries[2].incrementScore()
        
        performSegue(withIdentifier: "questionFour", sender: self)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "backToTwo", sender: self)
    }
    
}
