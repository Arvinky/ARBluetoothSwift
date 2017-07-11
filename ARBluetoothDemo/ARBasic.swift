//
//  ARBasicVC.swift
//  ARBluetoothDemo
//
//  Created by Arvin on 2017/7/11.
//  Copyright © 2017年 Arvin. All rights reserved.
//

import Foundation
import UIKit
import CoreBluetooth
class ARBasicVC: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
class ARMainVC: ARBasicVC {
    var handle : ARBLEHandle!
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.handle = ARBLEHandle.shareBLE
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        self.handle.blemanager = CBCentralManager.init(delegate: (self.handle), queue: DispatchQueue.init(label: "Arvin.telink"))
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(self.handle)
    }
}
