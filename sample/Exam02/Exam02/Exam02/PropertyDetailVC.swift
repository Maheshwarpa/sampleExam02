//
//  PropertyDetailVC.swift
//  Exam02
//
//  Created by Maheshwar Punyam Anand on 1/14/24.
//

import UIKit
import Lottie

class PropertyDetailVC: UIViewController {

    var image:String = ""
    var name = ""
    var price = ""
    var bedroom = ""
    var bathroom = ""
    var address = ""
    var sect = -1
    var rows = -1
    
    @IBOutlet weak var imageIV: UIImageView!
    
    @IBOutlet weak var Animation: LottieAnimationView!
    
    @IBOutlet weak var nameLBL: UILabel!
    
    @IBOutlet weak var addressLBL: UILabel!
    
    @IBOutlet weak var priceLBL: UILabel!
    
    @IBOutlet weak var bedroomLBL: UILabel!
    
    @IBOutlet weak var bathroomLBL: UILabel!
    
    
    @IBAction func PurchaseAction(_ sender: UIButton) {
        Animation.alpha=1
        Animation.contentMode =  .scaleAspectFit
        Animation.loopMode = .playOnce
                   
        Animation.animationSpeed=0.5
        Animation.play()
        Animation.alpha=0
        var amt = 0.0
        var total = Double(price)
        amt=total!*0.05
        amt+=total!
        let alert = UIAlertController(title: "Congratulations", message: "You have purchased the property. Total amount is $\(amt)", preferredStyle: .alert)
          
        alert.addAction(UIAlertAction(title: "Okay", style: .default,handler: {_ in
            for (index,prop) in Property.data.enumerated(){
                if(prop.name == self.name){
                    Property.purchased.append(prop)
                    Property.data.remove(at: index)
                }
            }
        }))
        
        
         
        
                        self.present(alert, animated: true)
        
        switch(sect){
        case 0:
            Property.first.remove(at: rows)
        case 1:
            Property.second.remove(at: rows)
        case 2:
            Property.third.remove(at: rows)
        default:
            print("Hi")
        }
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        self.nameLBL.text = "name:\(name)"
        self.imageIV.image = UIImage(named: image)
        self.addressLBL.text = "address:\(address)"
        self.bathroomLBL.text = "bathroom:\(bathroom)"
        self.bedroomLBL.text = "bedroom:\(bedroom)"
        self.priceLBL.text = "price:\(price)"
        Animation.alpha = 0
    }

 
}
