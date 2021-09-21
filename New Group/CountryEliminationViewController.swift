//
//  CountryEliminationViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 10.09.21.
//

import UIKit

class CountryEliminationViewController: UIViewController {
    
    
    
    @IBOutlet weak var ukSwitch: UISwitch!
    @IBOutlet weak var italySwitch: UISwitch!
    @IBOutlet weak var greeceSwitch: UISwitch!
    @IBOutlet weak var austriaSwitch: UISwitch!
    
    var italy = Country(name: "italy")
    var greece = Country(name: "greece")
    var uk = Country(name: "uk")
    var austria = Country(name: "austria")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func nextButton(_ sender: UIButton) {
        
        if ukSwitch.isOn {
            countries[0].incrementScore()
        } else if greeceSwitch.isOn {
            countries[1].incrementScore()
        } else if italySwitch.isOn {
            countries[2].incrementScore()
        } else if austriaSwitch.isOn {
            countries[3].incrementScore()
        }
        performSegue(withIdentifier: "questionThree", sender: self)
        
        
            
        }
    
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "backToOne", sender: self)
    }
    
    }
    
    
    
    
    

