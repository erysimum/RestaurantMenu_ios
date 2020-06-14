//
//  SecondViewController.swift
//  TravelAppsDupsOne
//
//  Created by Rohit Chhabra on 12/5/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var name: NSArray = []
       var imageArr: NSArray = []
       var ip = 0;
       var finalname = "";
       var cat = "";
    
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 3
           // return (name.count)
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
             let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? CellTableViewCell
            cell?.img.image = imageArr[indexPath.row] as? UIImage
            cell?.lbl.text = name[indexPath.row] as? String
            return cell!
            
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 120
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            let Storyboard = UIStoryboard(name: "Main", bundle: nil)
           let vc = Storyboard.instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController
             vc?.image = imageArr[indexPath.row] as! UIImage
             vc?.name = name[indexPath.row] as! String
            
            
          self.navigationController?.pushViewController(vc!, animated: true)
         //   tableView.deselectRow(at: <#T##IndexPath#>, animated: true)
            performSegue(withIdentifier: "makingtran", sender: name[indexPath.row])
           }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //   let vc1 = segue.destination as! ViewController
           
           
            let svc = segue.destination as! DetailViewController
            svc.name = sender as! String
            if (svc.name == "chilli-chicken") {
                ip = 0;
            } else if(svc.name == "kimchi"){
            ip = 1;
            }
            else if(svc.name == "bbq-chicken"){
                ip = 2;
            }
            else if(svc.name == "falafel-deluxe"){
                ip = 0;
            }
            else if(svc.name == "chicken-kabab"){
                ip = 1;
            } else if(svc.name == "lamb-kabab"){
                       ip = 2;
                   }
            svc.image = imageArr[ip] as! UIImage
          //  svc.image = imageArr[Int(svc.name)!] as! UIImage
           
        }
        
        
        

        override func viewDidLoad() {
            super.viewDidLoad()

            // Do any additional setup after loading the view.
          name = ["chilli-chicken", "kimchi", "bbq-chicken", "falafel-deluxe", "chicken-kabab", "lamb-kabab"]
            imageArr = [UIImage(named: "chilli-chicken")!, UIImage(named: "kimchi")!,
          UIImage(named: "bbq-chicken")!,UIImage(named: "falafel-deluxe")!,
           UIImage(named: "chicken-kabab")!,UIImage(named: "lamb-kabab")!]
            cat = finalname
            
            if(cat == "asian"){
                name = []
                imageArr = []
                 name = ["chilli-chicken", "kimchi", "bbq-chicken"]
                imageArr = [UIImage(named: "chilli-chicken")!, UIImage(named: "kimchi")!,
                            UIImage(named: "bbq-chicken") as Any]
                
            }else if(cat == "med"){
                name = []
                imageArr = []
                 name = ["falafel-deluxe", "chicken-kabab", "lamb-kabab"]
                imageArr = [UIImage(named: "falafel-deluxe")!,
                 UIImage(named: "chicken-kabab")!,UIImage(named: "lamb-kabab")!]
                
            }
        }

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */
        
        
      
    
    @IBAction func back(_ sender: Any) {
        dismiss(animated: true, completion: nil)
          _ = navigationController?.popToRootViewController(animated: true)
    }
    
    
    
     
      

    }
