//
//  ViewController.swift
//  ios-swift-date-demo
//
//  Created by Eiji Kushida on 2017/06/28.
//  Copyright © 2017年 Eiji Kushida. All rights reserved.
//

import UIKit
import SwiftDate


/// https://github.com/malcommac/SwiftDate/tree/master/Documentation
final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("年",Date().year)
        print("月",Date().month)
        print("月あたりの日数",Date().monthDays, "日")
        print("月", Date().monthName)
        print("月(short)", Date().shortMonthName)
        print("前月", Date().prevMonth.description)
        print("翌月", Date().nextMonth.description)
        print("何週目か？", Date().weekOfYear)
        print("何曜日か？", Date().weekday)
        print("何曜日か？", Date().weekdayName)
        print("日", Date().day)
        print("時間", Date().hour)
        print("分", Date().minute)
        print("秒", Date().second)
        
        let date1 = "2017-10-10 10:10".date(format: .custom("yyyy-MM-dd HH:MM"))
        print(date1?.absoluteDate.description ?? "")
        
        let region = Region(tz: TimeZoneName.asiaTokyo,
                            cal: CalendarName.gregorian,
                            loc: LocaleName.japanese)
        
        let date2 = DateInRegion(string: "2017-10-10 10:10",
                                 format: .custom("yyyy-MM-dd HH:MM"),
                                 fromRegion: region)
        print(date2?.absoluteDate.description ?? "")
    }
}

