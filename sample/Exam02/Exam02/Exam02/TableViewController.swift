//
//  TableViewController.swift
//  Exam02
//
//  Created by Maheshwar Punyam Anand on 1/13/24.
//

import UIKit

class TableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
//    var first:[Property] = []
//    var second:[Property] = []
//    var third:[Property] = []
//    var purchased:[Property] = []
    var flag=true
    var temp=0
    var sectionNum = -1
    var rowNum = -1
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=TableViewController.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? propertyCell
        let sec = indexPath.section
        print(sec)
        switch(sec){
        case 0:
           
            cell?.ImageIV.image=UIImage(named: Property.first[indexPath.row].propertyImage)
            cell?.textLBL.text=Property.first[indexPath.row].name
                    
               
        case 1:
//            flag=true
//            temp=0
//            if temp == Property.second.count{
//
//            }
//            else{
//                while(flag){
            cell?.ImageIV.image=UIImage(named: Property.second[indexPath.row].propertyImage)
            cell?.textLBL.text=Property.second[indexPath.row].name
//                    if(temp == Property.second.count){
//                        flag=false
//                    }
//                    temp+=1
//                }
//            }
       case 2:
//            flag=true
//            temp=0
//            if temp == Property.third.count{
//
//            }
//            else{
//                while(flag){
            cell?.ImageIV.image=UIImage(named: Property.third[indexPath.row].propertyImage)
            cell?.textLBL.text=Property.third[indexPath.row].name
//                    if(temp == Property.third.count){
//                        flag=false
//                    }
//                    temp+=1
//                }
//            }
        default:
//            flag=true
//            temp=0
//            if temp == Property.purchased.count{
//
//            }
//            else{
//                while(flag){
            cell?.ImageIV.image=UIImage(named: Property.purchased[indexPath.row].propertyImage)
            cell?.textLBL.text=Property.purchased[indexPath.row].name
//                    if(temp == Property.purchased.count){
//                        flag=false
//                    }
//                    temp+=1
//                }
           // }
        }
        
        
        
        return cell!
        }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return CGFloat(100)
    }
    
    @IBOutlet weak var TableViewController: UITableView!
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return Property.sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section){
        case 0:
            return Property.first.count
        case 1:
            return Property.second.count
        case 2:
            return Property.third.count
        case 3:
            return Property.purchased.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return Property.sections[section]
    }
    
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        <#code#>
//    }
    
    var sample:Property = Property.init(name: "", propertyImage: "", address: "", price: 0, numberOfBedrooms: 0, numberOfBathrooms: 0)
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        sectionNum=indexPath.section
        switch(indexPath.section){
    case 0:
        sample = Property.first[indexPath.row]
            rowNum=indexPath.row
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
    case 1:
        sample = Property.second[indexPath.row]
            rowNum=indexPath.row
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
    case 2:
        sample = Property.third[indexPath.row]
            rowNum=indexPath.row
        self.performSegue(withIdentifier: "DetailSegue", sender: self)
    default:
                print("Its purchased list")
            
        
    }
   }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.TableViewController.dataSource = self
        self.TableViewController.delegate = self
        // Do any additional setup after loading the view.
        
        for prop in Property.data{
            switch(prop.price){
            case 500000..<750000:
                Property.first.append(prop.self)
            case 75000..<1000000:
                Property.second.append(prop.self)
            case 1000000...:
                Property.third.append(prop)
            default:
                Property.purchased.append(prop)
            }
        }
        
        
        
        
       // separate()
        
        
        print(Property.first)
        print(Property.second)
        print(Property.third)
        print(Property.purchased)
        
        
    }
    override func viewWillAppear(_ animated: Bool) {
        print(Property.first.count)
        print(Property.second.count)
        print(Property.third.count)
        print(Property.purchased.count)
        self.TableViewController.reloadData()
    }
    
//     func separate(){
//         for inp in Property.data{
//            switch(inp.price){
//            case 500000..<750000:
//                first.append(inp)
//            case 750000..<1000000:
//                second.append(inp)
//            case 1000000...:
//                third.append(inp)
//            default:
//                purchased.append(inp)
//            }
//        }
//    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        
        if(segue.identifier == "DetailSegue"){
            let destVC=segue.destination as? PropertyDetailVC
            destVC?.image = sample.propertyImage
            destVC?.name = sample.name
            destVC?.price = String(sample.price)
            destVC?.address = sample.address
            destVC?.bedroom = String(sample.numberOfBedrooms)
            destVC?.bathroom = String(sample.numberOfBathrooms)
            destVC?.sect = sectionNum
            destVC?.rows = rowNum
        }
    }
    

}
