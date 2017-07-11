//
//  ARBLEHandle.swift
//  ARBluetoothDemo
//
//  Created by Arvin on 2017/7/11.
//  Copyright © 2017年 Arvin. All rights reserved.
//

import Foundation

import Foundation
import CoreBluetooth
import UIKit


class ARBLEHandle : NSObject ,CBCentralManagerDelegate  {
    
    static var handleState : ARBLEHandleState = ARBLEHandleState.ARBLEHandleStateNormal
    static var bleState : ARBLEState = ARBLEState.ARBLEStateNormal
    var loginBuffer : [UInt8]
    var scanedLights : [ARDevice]
    var scanedLightsUUID : [String]
    var blemanager : CBCentralManager?
    static let shareBLE = ARBLEHandle.init()
    
    private  override init() {    
        loginBuffer = [UInt8]()
        scanedLights = [ARDevice]()
        scanedLightsUUID = [String]()
    }
    
    func centralManagerDidUpdateState(_ central: CBCentralManager) {
        print(OperationQueue.current as Any)
        switch central.state {
        case .poweredOn:
            self.blemanager?.scanForPeripherals(withServices: nil, options: [:])
        case .poweredOff, .unsupported:
            let bluetoothURL = URL.init(string: "prefs:root=General&path=Bluetooth")
            if #available(iOS 10, *) {
                UIApplication.shared.open(bluetoothURL!, options: [:], completionHandler: nil);
            }else{
                UIApplication.shared.openURL(bluetoothURL!)
            }
        
        default: print(central.state)
        }
    }
    
    func centralManager(_ central: CBCentralManager, didDiscover peripheral: CBPeripheral, advertisementData: [String : Any], rssi RSSI: NSNumber) {
        if !self.scanedLightsUUID.contains(peripheral.uuidString()) {
            NSLog("%@", advertisementData)
            
        }
    }
    func centralManager(_ central: CBCentralManager, didConnect peripheral: CBPeripheral) {
        
    }
    
}
