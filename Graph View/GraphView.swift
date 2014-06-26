//
//  GraphView.swift
//  Graph-iti
//
//  Created by Andrew Paterson on 6/26/14.
//  Copyright (c) 2014 Andrew Paterson. All rights reserved.
//

import UIKit
import QuartzCore

@IBDesignable class GraphView: UIView {
  
  var dataPoints: Double[] = [] {
    willSet{
      self.intervals = newValue.count
    }
  }
  var intervals: Int = 0
  var backgroundLayer: CAShapeLayer!
  var topLineLayer: CAShapeLayer!
  var middleLineLayer: CAShapeLayer!
  var xAxisLineLayer: CAShapeLayer!
  var yAxisLineLayer: CAShapeLayer!
  var horizontalTickMarks: CAShapeLayer[]!
  var verticalTickMarks: CAShapeLayer[]!
  var verticalLines: CAShapeLayer[]!
  var horizontalTickMarkLabels: CATextLayer[]!
  var veticalTickMarkLabels: CATextLayer[]!
  var lineGraphLayer: CAShapeLayer!
  var pointSymbol: CAShapeLayer!
  
  @IBInspectable var backgroundLayerColor: UIColor = UIColor.blackColor()
  @IBInspectable var horizontalLineWidth: CGFloat = 2.0
  @IBInspectable var verticalLineWidth: CGFloat = 2.0
  @IBInspectable var graphLineWidth: CGFloat = 2.0
  @IBInspectable var horizontalLineColor: UIColor = UIColor.whiteColor()
  @IBInspectable var verticalLineColor: UIColor = UIColor.whiteColor()
  @IBInspectable var graphLineColor: UIColor = UIColor.whiteColor()
  @IBInspectable var horizontalTickMarkColor: UIColor = UIColor.whiteColor()
  @IBInspectable var vertialTickMarkColor: UIColor = UIColor.whiteColor()
  @IBInspectable var horizontalTickMarkLabelColor: UIColor = UIColor.whiteColor()
  @IBInspectable var verticalTickMarkLabelColor: UIColor = UIColor.whiteColor()
  @IBInspectable var xAxisLineColor: UIColor = UIColor.whiteColor()
  @IBInspectable var yAxisLineColor: UIColor = UIColor.whiteColor()
  @IBInspectable var xAxisLineWidth: CGFloat = 2.0
  @IBInspectable var yAxisLineWidth: CGFloat = 2.0
  @IBInspectable var xAxisTickMarkLineWidth: CGFloat = 2.0
  @IBInspectable var yAxisTickMarkLineWidth: CGFloat = 2.0
  @IBInspectable var xAxisTickMarkLabelFontSize: CGFloat = 2.0
  @IBInspectable var yAxisTickMarkLabelFontSize: CGFloat = 2.0
  @IBInspectable var pointSymbolBorderColor: UIColor = UIColor.whiteColor()
  @IBInspectable var pointSymbolFillColor: UIColor = UIColor.grayColor()
  @IBInspectable var displayPointSymbol: Bool = true
  @IBInspectable var displayYAxis: Bool = true
  @IBInspectable var displayXAxis: Bool = true
  @IBInspectable var displayVerticalLines: Bool = true
  @IBInspectable var displayHorizontalLines: Bool = true
  @IBInspectable var displayHorizontalTickMarks: Bool = true
  @IBInspectable var displayVerticalTickMarks: Bool = true
  @IBInspectable var displayHorizontalTickMarkLabels = true
  @IBInspectable var displayVerticalTickMarkLabels = true
  
  init(frame: CGRect) {
    super.init(frame: frame)
    // Initialization code
  }
  
  init(coder aDecoder: NSCoder!) {
    super.init(coder: aDecoder)
    // Initialization code
  }
  
  override func layoutSubviews() {
    
  }
  
  override func prepareForInterfaceBuilder() {
    
  }
  
}
