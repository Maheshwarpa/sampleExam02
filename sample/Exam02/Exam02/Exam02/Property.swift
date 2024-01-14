//
//  Property.swift
//  Exam02
//
//  Created by Maheshwar Punyam Anand on 1/13/24.
//

import Foundation





struct Property {
    let name: String
    let propertyImage:String
    let address: String
    let price: Double
    let numberOfBedrooms: Int
    let numberOfBathrooms: Int
    
    
 static var data:[Property] = [
    Property(name: "Property 1", propertyImage: "property1", address: "123 Main St", price: 500000, numberOfBedrooms: 3, numberOfBathrooms: 2),
    Property(name: "Property 2", propertyImage: "property2", address: "123 Quin St", price: 600000, numberOfBedrooms: 4, numberOfBathrooms: 1),
    Property(name: "Property 3", propertyImage: "property3", address: "456 Maple Ave", price: 750000, numberOfBedrooms: 4, numberOfBathrooms: 3),
    Property(name: "Property 4", propertyImage: "property4", address: "456 Mulberry Ave", price: 800000, numberOfBedrooms: 5, numberOfBathrooms: 2),
    Property(name: "Property 5", propertyImage: "property5", address: "789 Oak St", price: 1100000, numberOfBedrooms: 5, numberOfBathrooms: 4),
    Property(name: "Property 6", propertyImage: "property6", address: "321 Elm St", price: 1500000, numberOfBedrooms: 9, numberOfBathrooms: 5)
    
    ]
    
 static var sections = ["$500,000 - $750,000","$750,000 - $1,000,000","Over $1,000,000","Purchased"]
    
    static var first:[Property] = []
    static var second:[Property] = []
    static var third:[Property] = []
    static var purchased:[Property] = []

//    static func separate(){
//        for inp in data{
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
//    
}

