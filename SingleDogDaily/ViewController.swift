//
//  ViewController.swift
//  SingleDogDaily
//
//  Created by Tommy on 2016/10/31.
//  Copyright © 2016年 Tommy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let label = "label width is "
        let width:Double = 70.0
        let widthLabel = label + String(width)
        print(widthLabel)
        
        let dataArray = [1,2,3,4,5]
        var total = 0
        for item in dataArray {
            total += item;
            if item > 3 {
                print(String(item) + " is larger than 3.")
            } else {
                print(String(item) + "not!")
            }
        }
        
        var n = 2
        while n < 150 {
            n = n * 2
            print(String(n))
        }
        
        for item in 1...5 {
            print(item)
        }
        
        print(meet(name: "Bob", launch: "dumpling"))
        
        
        // 函数作为返回值
        
        func makeIncrementer() -> ((Int) -> Int) {
            func addOne (number : Int) -> Int {
                return number + 1
            }
            return addOne
        }
        let incrementer = makeIncrementer()
        print(incrementer(7))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func meet(name:String, launch:String) -> String {
        return "hello \(name), would you like to eat \(launch) today?"
    }
    
}
