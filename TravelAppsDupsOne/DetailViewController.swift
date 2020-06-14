//
//  DetailViewController.swift
//  TravelAppsDupsOne
//
//  Created by Rohit Chhabra on 12/5/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var starButtons: [UIButton]!
    
    
    @IBOutlet weak var rateView: UILabel!
    
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl: UILabel!
    
    var image =  UIImage()
       var name = ""

    override func viewDidLoad() {
        super.viewDidLoad()
     //   lbl.text = "You selected \(name) to eat"
       //        img.image = image
        if (name == "chilli-chicken"){
            lbl.text = " \(name) makes you go crazy. This \(name) with a tint of bird's eye chilli make you go wild. Wanna bet?"
            img.image = image
        } else if (name == "kimchi"){
            lbl.text = " \(name) will let you make your tongue go tangy. Sometimes, you gotta change your taste too."
            img.image = image
        }  else if (name == "bbq-chicken"){
            lbl.text = " \(name) coated in a spice rub, or barbecue sauce, or both. How do you like it to be served?"
            img.image = image
        } else if (name == "falafel-deluxe"){
            lbl.text = " \(name) in this wrap has potatoes and eggplant. It's the best wrap in town."
            img.image = image
        }else if (name == "chicken-kabab"){
            lbl.text = "This \(name) is threaded on skewers and marinated with olive oil, lemon juice, paprika, garlic and cumin. Mouth watery, isn't it?"
            img.image = image
        }else if (name == "lamb-kabab"){
            lbl.text = " The \(name) is made of finely ground mince goat meat with spices and then charcoal grilled on a skewer. Try it, you gonna love it."
            img.image = image
        }


        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
   //    print("Rated \(sender.tag) stars.")
          rateView.text = "Thank you for your \(sender.tag) stars rating. Means a lot!!!"
          for  button in starButtons {
              if button.tag <= sender.tag {
                  button.setBackgroundImage(UIImage.init(named: "star-selectedd"), for: .normal)   //selectted
              } else {
                  button.setBackgroundImage(UIImage.init(named: "star-not-selectedd"), for: .normal)    //not selectted
              }
          }
          
          
}
    
    
    
    

}
