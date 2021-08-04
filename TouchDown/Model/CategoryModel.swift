//
//  CategoryModel.swift
//  TouchDown
//
//  Created by mami taniguro on 8/3/21.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
