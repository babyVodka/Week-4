//
//  Fish.swift
//  Week 4
//
//  Created by May06 on 12/10/26.
//

import Foundation

class Fish: Identifiable {
    // Sửa lại id thành public/internal để thỏa mãn Identifiable
    let id: Int
    private var name: String
    private var color: String
    private var price: Double
    
    init(id: Int, name: String, color: String, price: Double) {
        self.id = id
        self.name = name
        self.color = color
        self.price = price
    }
    
    // Getter method
    func getInfo() -> String {
        return "\(id) \(name) - \(color) - $\(price)"
    }
    
    // Setter method
    func setName(_ newName: String) {
        self.name = newName
    }
    
    // Các hàm phụ trợ
    func getId() -> Int { return id }
    func getName() -> String { return name }
    func getColor() -> String { return color }
    func getPrice() -> Double { return price }
}
