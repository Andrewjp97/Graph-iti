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
  var pointSymbol: CAShapeLayer! {
  didSet {
    update()
  }
  }
  var dataPoints: Double[] = [] {
  willSet{
    self.intervals = newValue.count
    update()
  }
  }
  var horizontalTickMarkLabelStrings: String[]! {
  didSet {
    update()
  }
  }
  @IBInspectable var backgroundLayerColor: UIColor = UIColor.blackColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var graphLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalLineColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalLineColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var graphLineColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var vertialTickMarkColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkLabelColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkLabelColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var xAxisLineColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var yAxisLineColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var xAxisLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var yAxisLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var xAxisTickMarkLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var yAxisTickMarkLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var xAxisTickMarkLabelFontSize: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var yAxisTickMarkLabelFontSize: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var pointSymbolBorderColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var pointSymbolFillColor: UIColor = UIColor.grayColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var displayPointSymbol: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayYAxis: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayXAxis: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayVerticalLines: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayHorizontalLines: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayHorizontalTickMarks: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayVerticalTickMarks: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayHorizontalTickMarkLabels: Bool = true {
  didSet {
    update()
  }
  }
  @IBInspectable var displayVerticalTickMarkLabels: Bool = true {
  didSet {
    update()
  }
  }
  
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
    self.dataPoints = [0.3, 0.7, 2.9, 0.0, 7.7, 4.3, 2.6, 1.1, 10.0, 8.2, 9.3, 5.5, 3,7]
    self.horizontalTickMarkLabelStrings = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
  }
  
  func update() {
    if self.dataPoints != [] {
      if self.displayHorizontalTickMarkLabels && horizontalTickMarkLabelStrings {
        createGraph()
      } else if !self.displayHorizontalTickMarkLabels {
        createGraph()
      }
    }
  }
  
  func createGraph() {
    
  }
  
}
