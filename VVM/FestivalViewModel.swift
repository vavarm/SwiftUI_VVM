//
//  FestivalViewModel.swift
//  VVM
//
//  Created by Valentin Racaud--Minuzzi on 22/02/2024.
//

import SwiftUI

class FestivalViewModel: ObservableObject {
    static var sqmTable: Double = 6.0
    @Published public var name = ""
    @Published public var numberOfTables = 0
    @Published public var tablePrice = 0.0
    let identifier = UUID()
    public var m2price: Double {
        return round(tablePrice*10/FestivalViewModel.sqmTable)/10
      }
    public var maxrevenue: Double {
        return tablePrice*Double(numberOfTables)
    }
    init(name: String, numberOfTables: Int = 64, tablePrice: Double = 110){
        self.name = name
        self.numberOfTables = numberOfTables
        self.tablePrice = tablePrice
    }
}
