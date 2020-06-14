//
//  ViewController.swift
//  TravelAppsDupsOne
//
//  Created by Rohit Chhabra on 9/5/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
     var cat = " "
    
    
    
override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func asian(_ sender: Any) {
        cat = "asian"
               performSegue(withIdentifier: "segid", sender: self)
    }
    
    
    
    @IBAction func medi(_ sender: Any) {
        cat = "med"
               performSegue(withIdentifier: "segid", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue.destination as! SecondViewController
        let vc = segue.destination as! SecondViewController
           vc.finalname = cat;
           
       }
    

}

