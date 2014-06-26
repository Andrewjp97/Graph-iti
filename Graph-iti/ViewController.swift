//
//  ViewController.swift
//  Graph-iti
//
//  Created by Andrew Paterson on 6/26/14.
//  Copyright (c) 2014 Andrew Paterson. All rights reserved.
//

import UIKit
import GraphKit
class ViewController: UIViewController {
                            
  @IBOutlet var graph: GraphView
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    graph.dataPoints = [0.3, 0.7, 2.9, 0.0, 7.7, 4.3, 2.6, 1.1, 10.0, 8.2, 9.3, 5.5, 3,7]
    graph.horizontalTickMarkLabelStrings = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

