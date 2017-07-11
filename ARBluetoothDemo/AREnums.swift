//
//  AREnums.swift
//  ARBluetoothDemo
//
//  Created by Arvin on 2017/7/11.
//  Copyright © 2017年 Arvin. All rights reserved.
//

import Foundation
enum ARBLEState :Int {
    case ARBLEStateNormal = 0
    case ARBLEStateScanning
    case ARBLEStateConnecting
    case ARBLEStateSendingLoginInRequest
    case ARBLEStateLoginInResponse
    case ARBLEStateNotifying
    case ARBLEStateSendingMeshSetRequest
    case ARBLEStateMeshSetResponse
}

enum ARBLEHandleState: Int {
    case ARBLEHandleStateNormal = 0
    case ARBLEHandleStateScanedNewLight
    case ARBLEHandleStateConnected
    case ARBLEHandleStateFail
    case ARBLEHandleStateLoginSuccess
    case ARBLEHandleStateLoginFail
    case ARBLEHandleStateMeshSetSuccess
    case ARBLEHandleStateMeshSetFail
}

enum ARLightState : Int {
    case ARLightStateOutOfLine = 0
    case ARLightStateOn
    case ARLightStateOff
    case ARLightStateUnKnow
}
