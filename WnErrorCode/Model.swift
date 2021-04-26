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
        Error(errorCode: 01, errorText: "Сбой программы. Выключите и снова включите банкомат", errorPictire: "1.png", device_id: .CMD),
        Error(errorCode: 05, errorText: "Проблема с передачей данных на контроллер ChipCard.", errorPictire: "1.png", device_id: .CMD),
        Error(errorCode: 10, errorText: "Контроллер неисправен", errorPictire: "1.png", device_id: .CMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: "1.png", device_id: .CMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CMD - v4", errorPictire: "1.png", device_id: .CMD),
        Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен", errorPictire: "cmd_95", device_id: .CMD),
        
        Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем", errorPictire: "2.png", device_id: .CCMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: "2.png", device_id: .CCMD),
        Error(errorCode: 13, errorText: "Застревание документов", errorPictire: "2.png", device_id: .CCMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM", errorPictire: "2.png", device_id: .CCMD),
        Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения", errorPictire: "ccdm_24", device_id: .CCMD)
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
