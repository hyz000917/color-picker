//
//  ColorPickerViewController.swift
//  color-picker
//
//  Created by 来思良 on 2017/11/17.
//  Copyright © 2017年 Yuzhou He. All rights reserved.
//

import UIKit

class ColorPickerViewController: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {
    
    
    @IBOutlet weak var ColorNameLabel: UILabel!
    
    //Red, Orange, Yellow, Green, Blue and Purple
    
    @IBOutlet weak var picker: UIPickerView!
    var pickercolors=[
        Color(name: "red", uiColor: UIColor.red),
        Color(name: "orange", uiColor: UIColor.orange),
        Color(name: "yellow", uiColor: UIColor.yellow),
        Color(name: "green", uiColor: UIColor.green),
        Color(name: "blue", uiColor: UIColor.blue),
        Color(name: "purple", uiColor: UIColor.purple)
    ]
    
    var color: Color?
    
    var index = 0
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    // The number of rows of data
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return pickercolors.count
    }
    // The data to return for the row and component (column) that's being passed in
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        ColorNameLabel.text=pickercolors[row].name
        //self.view.backgroundColor=colors[row].uiColor
        
        self.title=pickercolors[row].name
        index=index+1
        return pickercolors[row].name
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        ColorNameLabel.text=pickercolors[row].name
        self.view.backgroundColor=pickercolors[row].uiColor
        index=index+1
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.picker.delegate=self
        self.picker.dataSource = self
        if (index==0)
        {
            self.view.backgroundColor=UIColor.red
        }
        
        // Do any additional setup after loading the view.
        //ColorNameLabel.text=color?.name
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
