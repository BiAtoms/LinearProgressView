//
//  LinearProgressView.swift
//  LinearProgressView
//
//  Created by Orkhan Alikhanov on 4/12/17.
//  Copyright © 2017 BiAtoms. All rights reserved.
//

import UIKit

@IBDesignable
open class LinearProgressView: UIView {
    
    private let trackView = UIView()
    private lazy var trackViewWidthConstraint: NSLayoutConstraint =  { NSLayoutConstraint(item: self.trackView, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 0) }()

    @IBInspectable
    open var barColor: UIColor = .gray {
        didSet {
            self.layer.backgroundColor = barColor.cgColor
        }
    }
    
    @IBInspectable
    open var trackColor: UIColor = .green {
        didSet {
            trackView.layer.backgroundColor = trackColor.cgColor
        }
    }
    
    @IBInspectable
    open var isCornersRounded: Bool = true {
        didSet {
            if !isCornersRounded {
                self.layer.cornerRadius = 0
                trackView.layer.cornerRadius = 0
            }
            layoutSubviews()
        }
    }
    
    @IBInspectable
    open var maximumValue: Float = 100.0 {
        didSet {
            progress = { progress }()
        }
    }

    @IBInspectable
    open var minimumValue: Float = 0.0 {
        didSet {
            progress = { progress }()
        }
    }
    
    @IBInspectable
    open private(set) var progress: Float = 0 {
        didSet {
            if progress > maximumValue {
                progress = maximumValue
            } else if progress < minimumValue {
                progress = minimumValue
            }
            layoutSubviews()
        }
    }

    @IBInspectable
    open var barInset: CGFloat = 0 {
        didSet {
            layoutSubviews()
        }
    }
    
    open var animationDuration: TimeInterval = 0.25
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        prepare()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        prepare()
    }
    
    open func prepare() {
        self.addSubview(trackView)
        
        trackView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            NSLayoutConstraint(item: trackView, attribute: .left, relatedBy: .equal, toItem: self, attribute: .leftMargin, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: trackView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .topMargin, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: trackView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottomMargin, multiplier: 1.0, constant: 0),
            trackViewWidthConstraint
            ])
        self.layoutMargins = .zero
    }
    
    open func setProgress(_ value: Float, animated: Bool) {
        self.progress = value
        
        if animated {
            UIView.animate(withDuration: animationDuration, animations: {
                self.layoutIfNeeded()
            })
        }
    }
    
    override open func layoutSubviews() {
        super.layoutSubviews()
        
        let maxWidth: CGFloat = max(self.frame.width - barInset * 2, 0) // prevent from becoming negative
        let calculatedWidth: CGFloat = maximumValue - minimumValue != 0 ? CGFloat((progress - minimumValue) / (maximumValue - minimumValue)) * maxWidth : 0
        trackViewWidthConstraint.constant = calculatedWidth
        if isCornersRounded {
            self.layer.cornerRadius = self.frame.height / 2
            trackView.layer.cornerRadius = trackView.frame.height / 2
        }
        
        self.layoutMargins = UIEdgeInsets(top: barInset, left: barInset, bottom: barInset, right: barInset)
    }
}

