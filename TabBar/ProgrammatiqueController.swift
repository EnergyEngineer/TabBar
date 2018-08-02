//
//  ProgrammatiqueController.swift
//  TabBar
//
//  Created by TOGNI Elie on 02/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class ProgrammatiqueController: UIViewController {
    
    
    // Définition des variables
    var monPremierUIView : UIView?
    var monPremierLabel: UILabel?
    var monPremierBouton: UIButton?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ////////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////// UIView ///////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////
        
        monPremierUIView = UIView(frame: CGRect(x: 30, y: 60, width: 50, height: 50))
        monPremierUIView?.backgroundColor = UIColor(red: 30/255, green: 123/255, blue: 90/255, alpha: 1)
        monPremierUIView?.layer.cornerRadius = 25
        
        guard monPremierUIView != nil else {return}
        
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
        
        ////////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////// UILabel///////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////
        
        monPremierLabel = UILabel(frame: CGRect(x: 0, y: monPremierUIView!.frame.maxY+20, width: view.frame.width, height: 50))
        monPremierLabel?.text="Coucou je suis un text"
        monPremierLabel?.numberOfLines = 1
        monPremierLabel?.textColor = UIColor.white
        monPremierLabel?.font = UIFont(name: "Chalkduster", size: 20)
        monPremierLabel?.textAlignment = .center
        view.addSubview(monPremierLabel!)
        
        ////////////////////////////////////////////////////////////////////////////////////////////
        ///////////////////////////////////////// UIButton//////////////////////////////////////////
        ////////////////////////////////////////////////////////////////////////////////////////////
        
        let rectDeMonBouton = CGRect(x: view.frame.width/2 - 75, y: monPremierLabel!.frame.maxY+20, width: 150, height: 40)
        monPremierBouton = UIButton(frame: rectDeMonBouton)
        monPremierBouton?.setTitle("Appuyer", for: UIControlState.normal)
        monPremierBouton?.tintColor = UIColor.red
        monPremierBouton?.titleLabel?.font = UIFont.boldSystemFont(ofSize: 18)
        monPremierBouton?.backgroundColor = UIColor.black
        monPremierBouton?.layer.borderColor = UIColor.white.cgColor
        monPremierBouton?.layer.borderWidth = 2
        view.addSubview(monPremierBouton!)
        
        monPremierBouton?.addTarget(self, action: #selector(boutonAppuye), for: .touchUpInside)
        
        
    }
    
    @objc func boutonAppuye(){
        print("Tu as bien appuyé")

    }
    
}
