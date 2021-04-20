//
//  Model.swift
//  WnErrorCode
//
//  Created by Mac mini on 11.04.2021.
//

import Foundation
import UIKit

enum Device: String{
    case CMD
    case CCMD
}

struct Error {
    var errorCode   : Int
    var errorText   : String
    var errorPictire: String?
    var device_id   : Device
}

class DeviceData {
    
    let device: [Device] = [.CMD, .CCMD]
    let errorDevice = [
        Error(errorCode: 01, errorText: "Сбой программы. Выключите и снова включите банкомат", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 05, errorText: "Проблема с передачей данных на контроллер ChipCard.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 10, errorText: "Контроллер неисправен", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CMD - v4", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен", errorPictire: nil, device_id: .CMD),
        
        Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 13, errorText: "Застревание документов", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения", errorPictire: nil, device_id: .CCMD)
    ]
    
    var errorByDevice = [Error]()
    
    init() {
        setupData()
    }
    
    func setupData() {
        self.errorByDevice = getErrors(device_id: errorDevice.first!.device_id)
    }
    
    func getErrors(device_id: Device) -> [Error] {
        self.errorDevice.filter( {$0.device_id == device_id } )
    }
}
