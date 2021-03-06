//
//  Extensions.swift
//  Movs
//
//  Created by Franclin Cabral on 1/19/19.
//  Copyright © 2019 franclin. All rights reserved.
//

import Foundation
import UIKit

extension Data {
    func jsonResponse() -> Any? {
        do {
            let jsonResponse = try JSONSerialization.jsonObject(with: self, options: JSONSerialization.ReadingOptions.allowFragments)
            return jsonResponse
        } catch _ {
            return nil
        }
    }
}

extension String {
    enum DateFormatType: String {
        case date = "yyyy-MM-dd"
    }
    
    
    func date() -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = DateFormatType.date.rawValue
        guard let date = dateFormatter.date(from: self) else {
            fatalError()
        }
        return date
    }
}

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
}
