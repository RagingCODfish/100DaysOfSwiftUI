//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Zach Uptin on 4/1/2022.
//

import Foundation

struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
