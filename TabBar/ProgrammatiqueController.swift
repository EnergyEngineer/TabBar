//
//  ProgrammatiqueController.swift
//  TabBar
//
//  Created by TOGNI Elie on 02/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    var monPremierUIView : UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 50, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        
        guard monPremierUIView != nil else {
            return
        }
        
        view.addSubview(monPremierUIView!)
        print(monPremierUIView?.frame)
        print(monPremierUIView?.bounds)
        
        
        let secondeVue = UIView(frame: monPremierUIView!.frame)
        secondeVue.center.y += 50
        secondeVue.backgroundColor = UIColor.red
        view.addSubview(secondeVue)
        
        let troisiemeVue = UIView(frame: monPremierUIView!.bounds)
        troisiemeVue.center.y += 100
        troisiemeVue.backgroundColor = UIColor.blue
        view.addSubview(troisiemeVue)
        
        
        
    }

    
}
