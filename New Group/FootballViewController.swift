//
//  FootballViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 12.09.21.
//

import UIKit

class FootballViewController: UIViewController {
    
    var italy = Country(name: "italy")
    var greece = Country(name: "greece")
    var uk = Country(name: "uk")
    var austria = Country(name: "austria")
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        //print(quizScore)
        // Do any additional setup after loading the view.
    }
    
    
    

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if sender.currentTitle == "greece"{
                 countries[1].incrementScore()
        } else if sender.currentTitle == "italy"{
            countries[2].incrementScore()
        } else if sender.currentTitle == "austria"{
            countries[3].incrementScore()
        } else if sender.currentTitle == "uk"{
            countries[0].incrementScore()
        }
        
    }
    
    
    @IBAction func resultButton(_ sender: UIButton) {
        
        let winner = countries.sorted().last!
        print("The Winner is \(winner.name) with a score of \(winner.score)")
        
        if winner.name == "italy" {
            performSegue(withIdentifier: "winnerItaly", sender: self)
        } else if winner.name == "uk" {
            performSegue(withIdentifier: "winnerUk", sender: self)
            
        } else if winner.name == "greece" {
            performSegue(withIdentifier: "winnerGreece", sender: self)
        } else if winner.name == "austria" {
            performSegue(withIdentifier: "winnerAustria", sender: self)
        }
        
    }
    
    
    
    @IBAction func backButton(_ sender: UIButton) {
        
        performSegue(withIdentifier: "backToFourteen", sender: self)
    }
    
}
