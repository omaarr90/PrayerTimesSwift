//
//  ViewController.swift
//  PrayerTimesSwift
//
//  Created by Abdullah Alhazmy on 01/31/2016.
//  Copyright (c) 2016 Abdullah Alhazmy. All rights reserved.
//

import UIKit
import PrayerTimesSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let myPrayerTime = PrayerTimes(caculationmethod: .Makkah, asrJuristic: .Shafii, adjustHighLats: .None, timeFormat: .Time12, location: (24.7993689, longitude: 46.6176563))
        myPrayerTime.caculationMethod = .Makkah
        for time in myPrayerTime.prayerTimes{
            print(time)
        }
        
        myPrayerTime.location = (34.7993689, longitude: 46.6176563)
        print(" ----- ")
        for time in myPrayerTime.prayerTimes{
            print(time)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

