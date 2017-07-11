//
//  ARExtension.swift
//  ARBluetoothDemo
//
//  Created by Arvin on 2017/7/11.
//  Copyright © 2017年 Arvin. All rights reserved.
//

import Foundation
import CoreBluetooth
extension CBPeripheral {
    func uuidString() -> String {
        return self.identifier.uuidString
    }
}
