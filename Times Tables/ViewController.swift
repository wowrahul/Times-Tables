//
//  ViewController.swift
//  Times Tables
//
//  Created by Rahul Joshi on 7/16/15.
//  Copyright (c) 2015 Rahul Joshi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate
{

    @IBOutlet weak var tblView: UITableView!
    @IBOutlet weak var Slider: UISlider!
    var sliderValue  = 2
    
    @IBAction func SliderChange(sender: UISlider) {
        
        tblView.reloadData()
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
    let cell =  UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesValue = Int(Slider.value) * (Int(indexPath.row) + 1)
        
        
        cell.textLabel?.text = String(timesValue)
        
        
        return cell
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

