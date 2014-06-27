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
  
  enum labelPosition: Int {
    case Left = 1,
    Right
  }
  
  var intervals: Int = 0
  var backgroundLayer: CAShapeLayer!
  var xAxisLineLayer: CAShapeLayer!
  var yAxisLineLayer: CAShapeLayer!
  var horizontalTickMarks: CAShapeLayer[] = []
  var verticalTickMarks: CAShapeLayer[] = []
  var verticalLines: CAShapeLayer[] = []
  var horizontalLines: CAShapeLayer[] = []
  var horizontalTickMarkLabels: CATextLayer[] = []
  var verticalTickMarkLabels: CATextLayer[] = []
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
  @IBInspectable var cornerRadius: CGFloat = 10.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalLineNumber: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalLineNumber: CGFloat = 2.0 {
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
  @IBInspectable var horizontalTickMarkNumber: CGFloat = 10.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkLength: CGFloat = 10.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkLabelColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var horizontalTickMarkLabelFontSize: CGFloat = 12.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkLabelColor: UIColor = UIColor.whiteColor() {
  didSet {
    update()
  }
  }
  @IBInspectable var veticalTickMarkLineWidth: CGFloat = 2.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkNumber:CGFloat = 10.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkLabelFontSize: CGFloat = 12.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var verticalTickMarkLength: CGFloat = 10.0 {
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
  @IBInspectable var leftEdgeInset: CGFloat = 15.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var rightEdgeInset: CGFloat = 15.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var topEdgeInset: CGFloat = 20.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var bottomEdgeInset: CGFloat = 20.0 {
  didSet {
    update()
  }
  }
  @IBInspectable var alignVerticalLabelsRightInsteadOfLeft: Bool = false {
  didSet {
    switch alignVerticalLabelsRightInsteadOfLeft {
    case true:
      self.verticalLabelAlignment = .Right
    case false:
      self.verticalLabelAlignment = .Left
    default:
      self.verticalLabelAlignment = .Left
    }
  }
  }
  var verticalLabelAlignment: labelPosition = .Left {
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
    self.update()
  }
  
  override func prepareForInterfaceBuilder() {
    self.dataPoints = [0.3, 0.7, 2.9, 0.0, 7.7, 4.3, 2.6, 1.1, 10.0, 8.2, 9.3, 5.5, 3,7]
    self.horizontalTickMarkLabelStrings = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13"]
    self.update()
  }
  
  func update() {
    if self.dataPoints != nil {
      if self.displayHorizontalTickMarkLabels == true && horizontalTickMarkLabelStrings != nil {
        createGraph()
      } else if self.displayHorizontalTickMarkLabels == false {
        createGraph()
      }
    }
  }
  
  func createGraph() {
    self.backgroundLayer?.removeFromSuperlayer()
    self.backgroundLayer = nil
    self.xAxisLineLayer?.removeFromSuperlayer()
    self.xAxisLineLayer = nil
    self.yAxisLineLayer?.removeFromSuperlayer()
    self.yAxisLineLayer = nil
    for layer in self.horizontalTickMarks {
      layer.removeFromSuperlayer()
    }
    self.horizontalTickMarks = []
    for layer in self.verticalTickMarks {
      layer.removeFromSuperlayer()
    }
    self.verticalTickMarks = []
    for layer in self.verticalLines {
      layer.removeFromSuperlayer()
    }
    self.verticalLines = []
    for layer in self.horizontalTickMarkLabels {
      layer.removeFromSuperlayer()
    }
    self.horizontalTickMarkLabels = []
    for layer in self.verticalTickMarkLabels {
      layer.removeFromSuperlayer()
    }
    self.verticalTickMarkLabels = []
    self.lineGraphLayer?.removeFromSuperlayer()
    self.lineGraphLayer = nil
    for layer in self.horizontalLines {
      layer.removeFromSuperlayer()
    }
    self.horizontalLines = []
    
    
    
    self.makeBackground()
    if self.displayXAxis {
      self.makeXAxis()
    }
    if self.displayYAxis {
      self.makeYAxis()
    }
    if self.displayHorizontalLines == true && self.horizontalLineNumber > 0.0 {
      self.makeHorizontalLines()
    }
    if self.displayVerticalLines == true && self.verticalLineNumber > 0.0 {
      self.makeVerticalLines()
    }
    if self.displayHorizontalTickMarks == true && self.horizontalTickMarkNumber > 0.0 {
      self.makeHorizontalTickMarks()
    }
    if self.displayVerticalTickMarks == true && self.verticalTickMarkNumber > 0.0 {
      self.makeVerticalTickMarks()
    }
    if self.displayHorizontalTickMarkLabels == true && self.horizontalTickMarkLabelStrings != nil {
      self.makeHorizontalTickMarkLabels()
    }
  }
  
  func makeBackground() {
    self.backgroundLayer = CAShapeLayer()
    self.backgroundLayer.backgroundColor = self.backgroundLayerColor.CGColor
    self.backgroundLayer.fillColor = self.backgroundLayerColor.CGColor
    let path = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.cornerRadius)
    self.backgroundLayer.path = path.CGPath
    self.layer.addSublayer(self.backgroundLayer)
  }
  
  func makeXAxis() {
    self.xAxisLineLayer = CAShapeLayer()
    self.xAxisLineLayer.strokeColor = self.xAxisLineColor.CGColor
    self.xAxisLineLayer.fillColor = nil
    self.xAxisLineLayer.lineWidth = self.xAxisLineWidth
    self.xAxisLineLayer.lineCap = kCALineCapRound
    let path = UIBezierPath()
    path.moveToPoint(CGPointMake(self.leftEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset))
    path.addLineToPoint(CGPointMake(CGRectGetWidth(self.frame) - self.rightEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset))
    self.xAxisLineLayer.path = path.CGPath
    self.layer.addSublayer(self.xAxisLineLayer)
  }
  
  func makeYAxis() {
    self.yAxisLineLayer = CAShapeLayer()
    self.yAxisLineLayer.strokeColor = self.yAxisLineColor.CGColor
    self.yAxisLineLayer.fillColor = nil
    self.yAxisLineLayer.lineWidth = self.yAxisLineWidth
    self.yAxisLineLayer.lineCap = kCALineCapRound
    let path = UIBezierPath()
    path.moveToPoint(CGPointMake(self.leftEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset))
    path.addLineToPoint(CGPointMake(self.leftEdgeInset, self.topEdgeInset))
    self.yAxisLineLayer.path = path.CGPath
    self.layer.addSublayer(self.yAxisLineLayer)
  }
  
  func makeHorizontalLines() {
    let availableHeight = self.frame.height - self.topEdgeInset - self.bottomEdgeInset
    let distanceBetweenLines = availableHeight / self.horizontalLineNumber
    for var i = 0; i < Int(self.horizontalLineNumber); i++ {
      let line = CAShapeLayer()
      line.fillColor = nil
      line.strokeColor = self.horizontalLineColor.CGColor
      line.lineWidth = self.horizontalLineWidth
      line.lineCap = kCALineCapRound
      let path = UIBezierPath()
      path.moveToPoint(CGPointMake(self.leftEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset - (distanceBetweenLines * (CGFloat(i) + 1.0))))
      path.addLineToPoint(CGPointMake(CGRectGetWidth(self.frame) - self.rightEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset - (distanceBetweenLines * (CGFloat(i) + 1.0))))
      line.path = path.CGPath
      self.layer.addSublayer(line)
      self.horizontalLines.append(line)
    }
  }
  
  func makeVerticalLines() {
    let availableWidth = self.frame.width - self.rightEdgeInset - self.leftEdgeInset
    let distanceBetweenLines:CGFloat = availableWidth / self.verticalLineNumber
    for var i = 0; i < Int(self.verticalLineNumber); i++ {
      let line = CAShapeLayer()
      line.fillColor = nil
      line.strokeColor = self.verticalLineColor.CGColor
      line.lineWidth = self.verticalLineWidth
      line.lineCap = kCALineCapRound
      let path = UIBezierPath()
      path.moveToPoint(CGPointMake(self.leftEdgeInset + (distanceBetweenLines * (CGFloat(i) + 1.0)), self.topEdgeInset))
      path.addLineToPoint(CGPointMake(self.leftEdgeInset + (distanceBetweenLines * (CGFloat(i) + 1.0)), CGRectGetHeight(self.frame) - self.bottomEdgeInset))
      line.path = path.CGPath
      self.layer.addSublayer(line)
      self.verticalLines.append(line)
    }
  }
  
  func makeHorizontalTickMarks() {
    let availableWidth = self.frame.width - self.rightEdgeInset - self.leftEdgeInset
    let distanceBetweenLines:CGFloat = availableWidth / self.horizontalTickMarkNumber
    
    let line = CAShapeLayer()
    line.fillColor = nil
    line.strokeColor = self.horizontalTickMarkColor.CGColor
    line.lineWidth = self.horizontalTickMarkLineWidth
    line.lineCap = kCALineCapRound
    let path = UIBezierPath()
    path.moveToPoint(CGPointMake(self.leftEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset - (0.5 * self.horizontalTickMarkLength)))
    path.addLineToPoint(CGPointMake(self.leftEdgeInset, CGRectGetHeight(self.frame) - self.bottomEdgeInset + (0.5 * self.horizontalTickMarkLength)))
    line.path = path.CGPath
    self.layer.addSublayer(line)
    self.horizontalTickMarks.append(line)
    
    for var i = 0; i < self.intervals; i++ {
      let line = CAShapeLayer()
      line.fillColor = nil
      line.strokeColor = self.horizontalTickMarkColor.CGColor
      line.lineWidth = self.horizontalTickMarkLineWidth
      line.lineCap = kCALineCapRound
      let path = UIBezierPath()
      path.moveToPoint(CGPointMake(self.leftEdgeInset + (distanceBetweenLines * (CGFloat(i) + 1.0)), CGRectGetHeight(self.frame) - self.bottomEdgeInset - (0.5 * self.horizontalTickMarkLength)))
      path.addLineToPoint(CGPointMake(self.leftEdgeInset + (distanceBetweenLines * (CGFloat(i) + 1.0)), CGRectGetHeight(self.frame) - self.bottomEdgeInset + (0.5 * self.horizontalTickMarkLength)))
      line.path = path.CGPath
      self.layer.addSublayer(line)
      self.horizontalTickMarks.append(line)
    }
  }
  
  func makeVerticalTickMarks() {
    let availableHeight = self.frame.height - self.topEdgeInset - self.bottomEdgeInset
    let distanceBetweenLines = availableHeight / self.horizontalTickMarkNumber
    
    let line = CAShapeLayer()
    line.fillColor = nil
    line.strokeColor = self.horizontalTickMarkColor.CGColor
    line.lineWidth = self.horizontalTickMarkLineWidth
    line.lineCap = kCALineCapRound
    let path = UIBezierPath()
    path.moveToPoint(CGPointMake(self.leftEdgeInset - (0.5 * self.verticalTickMarkLength), CGRectGetHeight(self.frame) - self.bottomEdgeInset))
    path.addLineToPoint(CGPointMake(self.leftEdgeInset + (0.5 * self.verticalTickMarkLength), CGRectGetHeight(self.frame) - self.bottomEdgeInset))
    line.path = path.CGPath
    self.layer.addSublayer(line)
    self.verticalTickMarks.append(line)
    
    for var i = 0; i < Int(self.horizontalTickMarkNumber); i++ {
      let line = CAShapeLayer()
      line.fillColor = nil
      line.strokeColor = self.horizontalTickMarkColor.CGColor
      line.lineWidth = self.horizontalTickMarkLineWidth
      line.lineCap = kCALineCapRound
      let path = UIBezierPath()
      path.moveToPoint(CGPointMake(self.leftEdgeInset - (0.5 * self.verticalTickMarkLength), CGRectGetHeight(self.frame) - self.bottomEdgeInset - (distanceBetweenLines * (CGFloat(i) + 1.0))))
      path.addLineToPoint(CGPointMake(self.leftEdgeInset + (0.5 * self.verticalTickMarkLength), CGRectGetHeight(self.frame) - self.bottomEdgeInset - (distanceBetweenLines * (CGFloat(i) + 1.0))))
      line.path = path.CGPath
      self.layer.addSublayer(line)
      self.verticalTickMarks.append(line)
    }
  }
  
  func makeHorizontalTickMarkLabels() {
    
  }
  
}