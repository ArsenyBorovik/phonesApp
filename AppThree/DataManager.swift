//
//  DataManager.swift
//  AppThree
//
//  Created by Арсений on 10/29/23.
//

import Foundation

class DataManager {
    
    static let shared = DataManager()
    
    func obtainPhones() -> [Phone] {
        
        let phone1 = Phone(model: "phone1", year: 2017, image: .phone1)
        let phone2 = Phone(model: "phone2", year: 2019, image: .phone2)
        let phone3 = Phone(model: "phone3", year: 2021, image: .phone3)
        let phone4 = Phone(model: "phone4", year: 2023, image: .phone4)
        let phone5 = Phone(model: "phone5", year: 2010, image: .phone5)
        let phone6 = Phone(model: "phone6", year: 2012, image: .phone6)
        let phone7 = Phone(model: "phone7", year: 2014, image: .phone7)
        let phone8 = Phone(model: "phone8", year: 2016, image: .phone8)
        let phone9 = Phone(model: "phone9", year: 2018, image: .phone9)
        let phone10 = Phone(model: "phone10", year: 2020, image: .phone10)
        
        return [phone1, phone2, phone3, phone4, phone5, phone6, phone7, phone8, phone9, phone10]
    }
}
