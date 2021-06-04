//
//  ViewController.swift
//  ConverttoDecimalNotation
//
//  Created by Daniel Washington Ignacio on 04/06/21.
//

/*
 Create a function to convert an array of percentages to their decimal equivalents.

 Examples

 convertToDecimal(["1%", "2%", "3%"]) ➞ [0.01, 0.02, 0.03]

 convertToDecimal(["45%", "32%", "97%", "33%"]) ➞ [0.45, 0.32, 0.97, 0.33]

 convertToDecimal(["33%", "98.1%", "56.44%", "100%"]) ➞ [0.33, 0.981, 0.5644, 1]
 */

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
       // print(self.convertToDecimal(["1%", "2%", "3%"]))
       // print(self.convertToDecimal(["45%", "32%", "97%", "33%"]))
        print(self.convertToDecimal(["33%", "98.1%", "56.44%", "100%"]))
    }

    func convertToDecimal(_ perc: [String]) -> [Double] {
        var arr: [String] = []
        for n in perc{
            let parsed = n.replacingOccurrences(of: "%", with: "")
            arr.append(parsed)
        }
        let doubles = arr.compactMap(Double.init)
        let sum = doubles.map {$0 / 100}
        return sum
    }

}

