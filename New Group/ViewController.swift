//
//  ViewController.swift
//  HolidayEscapes
//
//  Created by Connar Mordelt on 10.09.21.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var mapView: MKMapView!
    
    
    override func viewDidLoad() {
        
        // Set initial location to Berlin
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        performSegue(withIdentifier: "startingQuiz", sender: self)
    }
    
    
    @IBAction func goBack(_ sender: UIButton) {
        
        performSegue(withIdentifier: "backToOne", sender: self)
    }
    
    @IBAction func backToFirst(_ sender: Any) {
    }
    
    
}

    
