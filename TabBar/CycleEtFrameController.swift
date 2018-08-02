//
//  CycleEtFrameController.swift
//  TabBar
//
//  Created by TOGNI Elie on 02/08/2018.
//  Copyright © 2018 TOGNI Elie. All rights reserved.
//

import UIKit

class CycleEtFrameController: UIViewController {

    @IBOutlet weak var vueFrameEtBounds: UIView!
    
    
    // Pour appeler quelque chose une seule fois :
    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load appelé")

    }
    
    // Effectuer une action lorsque la vue va apparaître
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("View will appear")
    }
    
    // Effectuer un action lorsque la vue est apparue
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("View did appear")
        print("Frame -> : \(vueFrameEtBounds.frame)") //retourne (x, y, L, H) par rapport à la vue qui le contient
        print("Bounds -> : \(vueFrameEtBounds.bounds)") //retourne (0, 0, L, H) par rapport à lui même
    
        UIView.animate(withDuration: 2, animations: {
            self.vueFrameEtBounds.transform = CGAffineTransform(rotationAngle: CGFloat(Double.pi)/4)
            }) { (success) in
            print("Frame -> : \(self.vueFrameEtBounds.frame)")
            print("Bounds -> : \(self.vueFrameEtBounds.bounds)")
        }
       
    
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("View will disappear")
    }
    

    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("View did appear")
        
        
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
