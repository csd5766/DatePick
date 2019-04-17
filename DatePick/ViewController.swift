//
//  ViewController.swift
//  DatePick
//
//  Created by D7702_09 on 2019. 4. 17..
//  Copyright © 2019년 csd5766. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myDatePicker: UIDatePicker!
    @IBOutlet weak var outLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
       
        let  locale = Locale(identifier: "ko_KO")
        myDatePicker.locale=locale
        
        myDatePicker.datePickerMode = UIDatePicker.Mode.dateAndTime
        
        let date = Date();
        let format = DateFormatter();
        format.dateFormat = "yyyy-MM-dd HH:mm EEE a"
        let formatterDate = format.string(from: date)
        outLabel.text = formatterDate
        
    
        
    }

    @IBAction func valueChange(_ sender: Any) {
        let  selectedData = myDatePicker.date
        
        
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd HH:mm EEE a"
        outLabel.text = formatter.string(from: selectedData)
        
        
    }
    
}

