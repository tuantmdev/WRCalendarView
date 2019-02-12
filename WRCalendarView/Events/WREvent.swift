//
//  WREvent.swift
//  Pods
//
//  Created by wayfinder on 2017. 4. 29..
//
//

import UIKit
import DateToolsSwift

open class WREvent: TimePeriod {
    open var title: String = ""
    open var backgroundColor: UIColor = #colorLiteral(red: 0.2078431373, green: 0.6941176471, blue: 0.9450980392, alpha: 0.09719071062)
    open var textColor: UIColor = #colorLiteral(red: 0.1294117647, green: 0.4470588235, blue: 0.6117647059, alpha: 1)
    
    open class func make(date:Date, chunk: TimeChunk, title: String) -> WREvent {
        let event = WREvent(beginning: date, chunk: chunk)
        event.title = title
        return event
    }
}
