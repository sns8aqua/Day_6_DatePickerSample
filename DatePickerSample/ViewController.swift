//
//  ViewController.swift
//  DatePickerSample
//
//  Created by Santhosh on 13/01/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var displayLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datePicker.minimumDate = Date()
        datePicker.maximumDate = Date().addingTimeInterval(10000)
        
        
        
        let dateString = "05-03-2020 13:56:23"
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MM-YYYY HH:mm:ss"
        
        let date = dateFormatter.date(from: dateString)
        
        print(date)
        
        
        
    }

    @IBAction func dateChanged(_ sender: Any) {
        print(datePicker.date)
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd-MMMM-YYYY hh:mm:ss a"
        self.displayLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
}

