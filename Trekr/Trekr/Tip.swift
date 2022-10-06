//
//  Tip.swift
//  Trekr
//
//  Created by Zach Uptin on 6/2/2022.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
    
}
