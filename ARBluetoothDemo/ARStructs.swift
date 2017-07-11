//
//  ARStructs.swift
//  ARBluetoothDemo
//
//  Created by Arvin on 2017/7/11.
//  Copyright © 2017年 Arvin. All rights reserved.
//

import Foundation
import CoreBluetooth
class ARMesh {
    var meshName : String?
    var meshPassword : String?
    let ltk : [UInt8]
    
    init(meshName: String, meshPassword : String) {
        self.meshName = meshName
        self.meshPassword = meshPassword
        self.ltk = [0xc0,0xc1,0xc2,0xc3,0xc4,0xc5,0xc6,0xc7,
                      0xd8,0xd9,0xda,0xdb,0xdc,0xdd,0xde,0xdf]
        
    }
    
}
class ARLight {
    var address : UInt16
    var bringtness : Int
    var state : ARLightState
    init(address : UInt16, bringtness : Int, state : ARLightState) {
        self.address = address
        self.bringtness = bringtness
        self.state = state
    }
    init() {
        self.address  = 0
        self.bringtness = 0
        self.state = ARLightState.ARLightStateUnKnow
    }
}
class ARDevice  {
    var peripheral : CBPeripheral
    var rssi : NSNumber
    var mac : String
    var manufactureID : UInt16
    var productUUID : UInt16
    var status : UInt8
    var addressFromAdvertisment : UInt16
    var rsv : [UInt8] //16 bytes customize package Advertisment
    var mesh : ARMesh
    
    init(peripheral : CBPeripheral, rssi : NSNumber, mac : String, manufactureID : UInt16, productUUID : UInt16, status : UInt8, addressFromAdvertisment : UInt16, rsv : [UInt8]) {
        self.peripheral = peripheral
        self.rssi = rssi
        self.mac = mac
        self.manufactureID = manufactureID
        self.productUUID = productUUID
        self.status = status
        self.addressFromAdvertisment = addressFromAdvertisment
        self.rsv = rsv
        self.mesh = ARMesh.init(meshName: ARDefaultMeshName, meshPassword: ARDefaultMeshPasswrod)
    }
    
    func customizeRSV() -> String {
        //
        return "rsv"
    }
    func uuid() -> String { return peripheral.identifier.uuidString }
    
}
