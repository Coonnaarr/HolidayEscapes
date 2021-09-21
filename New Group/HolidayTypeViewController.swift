//
//  HolidayTypeViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 10.09.21.
//

import UIKit

class HolidayTypeViewController: UIViewController {

    
    @IBOutlet weak var citySwitch: UISwitch!
    @IBOutlet weak var activtiySwitch: UISwitch!
    @IBOutlet weak var beachSwitch: UISwitch!
    
    
    
    var italy = Country(name: "italy")
    var greece = Country(name: "greece")
    var uk = Country(name: "uk")
    var austria = Country(name: "austria")
    
    //Missing sender to determine what value was passed. 
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextQuestion(_ sender: UIButton) {
        
        if citySwitch.isOn {
            countries[0].incrementScore()
        } else if activtiySwitch.isOn{
            countries[3].incrementScore()
            countries[2].incrementScore()
        } else if beachSwitch.isOn{
            countries[1].incrementScore()
        }
        
        
        performSegue(withIdentifier: "questionFive", sender: self)
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        performSegue(withIdentifier: "backToThree", sender: self)
    }
    
}
