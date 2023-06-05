//
//  Shop.swift
//  TouchDown
//
//  Created by Jasmine Lai Hweeying on 30/05/2023.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
