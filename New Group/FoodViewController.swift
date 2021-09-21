//
//  FoodViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 10.09.21.
//

import UIKit

class FoodViewController: UIViewController {
    
    
    
    var italy = Country(name: "italy")
    var greece = Country(name: "greece")
    var uk = Country(name: "uk")
    var austria = Country(name: "austria")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    @IBAction func foodButton(_ sender: UIButton) {
        
        if sender.currentTitle == "greece"{
            countries[1].incrementScore()
        } else if sender.currentTitle == "italy"{
            countries[2].incrementScore()
        } else if sender.currentTitle == "austria"{
            countries[3].incrementScore()
        } else if sender.currentTitle == "uk"{
            countries[0].incrementScore()
        }
        
        
        
        performSegue(withIdentifier: "questionSix", sender: self)
        
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "backToFour", sender: self)
    }
    
}
