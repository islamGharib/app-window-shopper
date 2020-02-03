//
//  Wage.swift
//  window-shopper
//
//  Created by Islam Gharib on 2/3/20.
//  Copyright © 2020 Gharib. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage: Double, forPrice price: Double)-> Int{
        return Int(ceil(price/wage))
    }
}
