//
//  MGK3DButton.swift
//
//  Created by Mohammad on 8/12/17.
//  Copyright © 2017 Mohammad Ghasemi Kakroudi. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable
class MGK3DButton: UIButton {
    
    //    @IBInspectable // not working on enum :(
    var color : color? {
        didSet{
            self.selectColor()
        }
    }
    
    @IBInspectable
    var customColor : UIColor?{
        didSet{
            self.backgroundColor = customColor
            setup()
        }
    }
    @IBInspectable
    var customShadowColor : UIColor?{
        didSet{
            self.layer.shadowColor = customShadowColor?.cgColor
            setup()
        }
    }
    
    @IBInspectable
    var titleColor: UIColor?{
        didSet{
            self.setTitleColor(titleColor, for: .normal)
        }
    }
    
    
    enum color: String {
        case white
        case green
        case beige
        case navyBlue
        case orange
    }
    
    
    
    //main backGround colors
    fileprivate var greenColor = UIColor(red: 73/255, green: 176/255, blue: 118/255, alpha: 1)
    fileprivate var beigeColor = UIColor(red: 227/255, green: 224/255, blue: 215/255, alpha: 1)
    fileprivate var navyBlueColor = UIColor(red: 83/255, green: 95/255, blue: 149/255, alpha: 1)
    fileprivate var orangeColor = UIColor(red: 241/255, green: 148/255, blue: 115/255, alpha: 1)
    
    //shadow background colors
    fileprivate var whiteShadowColor = UIColor(red: 217/255, green: 217/255, blue: 217/255, alpha: 1)
    fileprivate var greenShadowColor = UIColor(red: 63/255, green: 149/255, blue: 101/255, alpha: 1)
    fileprivate var beigeShadowColor = UIColor(red: 194/255, green: 190/255, blue: 183/255, alpha: 1)
    fileprivate var navyBlyeShadowColor = UIColor(red: 58/255, green: 68/255, blue: 113/255, alpha: 1)
    fileprivate var orangeShadowColor = UIColor(red: 204/255, green: 127/255, blue: 80/255, alpha: 1)
    
    //    override func draw(_ rect: CGRect) {
    
    //    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override init(frame:CGRect) {
        super.init(frame:frame)
        setup()
    }
    
    func setup(){
        layer.cornerRadius = 7
        //shadow effects
        
        self.layer.shadowOffset = CGSize(width: 0, height: 6)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.1 // blur
        self.layer.masksToBounds = false
        
        if let customColorSet = customColor , let customShadowColorSet = customShadowColor {
            self.backgroundColor = customColorSet
            self.layer.shadowColor = customShadowColorSet.cgColor
            self.color = nil
        }else{
            self.color = .white // default
        }
        
        if let title = titleColor{
            self.setTitleColor(title, for: .normal)
        }

    }
    
    public func initWith(color : UIColor , shadow : UIColor){
        self.customColor = color
        self.customShadowColor = shadow
    }
    
    //MARK: - Touch Behavior
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        self.frame.size.height = self.frame.size.height - 4
        self.frame.origin.y = self.frame.origin.y + 4
        if let colorSelected = self.color {
            switch colorSelected {
            case .white:
                self.backgroundColor = whiteShadowColor
                break
            case .beige:
                self.backgroundColor = beigeShadowColor
                break
            case .green:
                self.backgroundColor = greenShadowColor
                break
            case .navyBlue:
                self.backgroundColor = navyBlyeShadowColor
                break
            case .orange:
                self.backgroundColor = orangeShadowColor
                break
            }
        }else if let customShadowColorSet = customShadowColor {
            self.backgroundColor = customShadowColorSet
        }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesCancelled(touches, with: event)
        
        UIView.animate(withDuration: 0.2, animations: {
            self.frame.size.height = self.frame.size.height + 4
            self.frame.origin.y = self.frame.origin.y - 4
            if let colorSelected = self.color {
                switch colorSelected {
                case .white:
                    self.backgroundColor = UIColor.white
                    break
                case .beige:
                    self.backgroundColor = self.beigeColor
                    break
                case .green:
                    self.backgroundColor = self.greenColor
                    break
                case .navyBlue:
                    self.backgroundColor = self.navyBlueColor
                    break
                case .orange:
                    self.backgroundColor = self.orangeColor
                    break
                }
            }else if let customColorSet = self.customColor {
                self.backgroundColor = customColorSet
            }
        })
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesEnded(touches, with: event)
        
        UIView.animate(withDuration: 0.2, animations: {
            self.frame.size.height = self.frame.size.height + 4
            self.frame.origin.y = self.frame.origin.y - 4
            if let colorSelected = self.color {
                switch colorSelected {
                case .white:
                    self.backgroundColor = UIColor.white
                    break
                case .beige:
                    self.backgroundColor = self.beigeColor
                    break
                case .green:
                    self.backgroundColor = self.greenColor
                    break
                case .navyBlue:
                    self.backgroundColor = self.navyBlueColor
                    break
                case .orange:
                    self.backgroundColor = self.orangeColor
                    break
                }
            }else if let customColorSet = self.customColor {
                self.backgroundColor = customColorSet
            }
        })
    }
    
    func selectColor(){
        if let colorSelected = self.color {
            switch colorSelected {
            case .white :
                self.backgroundColor = UIColor.white
                self.layer.shadowColor = whiteShadowColor.cgColor
                self.setTitleColor(UIColor.darkText, for: .normal)
                break
            case .green :
                self.backgroundColor = greenColor
                self.layer.shadowColor = greenShadowColor.cgColor
                self.setTitleColor(UIColor.white, for: .normal)
                break
            case .beige:
                self.backgroundColor = beigeColor
                self.layer.shadowColor = beigeShadowColor.cgColor
                self.setTitleColor(UIColor.darkText, for: .normal)
                break
            case .navyBlue :
                self.backgroundColor = navyBlueColor
                self.layer.shadowColor = navyBlyeShadowColor.cgColor
                self.setTitleColor(UIColor.white, for: .normal)
                break
            case .orange :
                self.backgroundColor = orangeColor
                self.layer.shadowColor = orangeShadowColor.cgColor
                self.setTitleColor(UIColor.white, for: .normal)
                break
            }
        }
    }
    
    
    
}
