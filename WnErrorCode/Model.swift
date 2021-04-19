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
    var errorPictire: UIImage?
    var device_id   : Device
}

class DeviceData {
    var device: [Device] = [.CMD, .CCMD]
    var errorDevice = [Error]()
    var errorByDevice = [Error]()
    
    init() {
        setupData()
    }
    
    func setupData() {

        let cmd_error1 = Error(errorCode: 01, errorText: "Сбой программы. Выключите и снова включите банкомат", errorPictire: nil, device_id: .CMD)
        let cmd_error2 = Error(errorCode: 05, errorText: "Проблема с передачей данных на контроллер ChipCard.", errorPictire: nil, device_id: .CMD)
        let cmd_error3 = Error(errorCode: 10, errorText: "Контроллер неисправен", errorPictire: nil, device_id: .CMD)
        let cmd_error4 = Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: nil, device_id: .CMD)
        let cmd_error5 = Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CMD - v4", errorPictire: nil, device_id: .CMD)
        let cmd_error6 = Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен", errorPictire: nil, device_id: .CMD)

        
        let ccdm_error1 = Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем", errorPictire: nil, device_id: .CCMD)
        let ccdm_error2 = Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorPictire: nil, device_id: .CCMD)
        let ccdm_error3 = Error(errorCode: 13, errorText: "Застревание документов", errorPictire: nil, device_id: .CCMD)
        let ccdm_error4 = Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM", errorPictire: nil, device_id: .CCMD)
        let ccdm_error5 = Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения", errorPictire: nil, device_id: .CCMD)

        errorDevice.append(cmd_error1)
        errorDevice.append(cmd_error2)
        errorDevice.append(cmd_error3)
        errorDevice.append(cmd_error4)
        errorDevice.append(cmd_error5)
        errorDevice.append(cmd_error6)
        errorDevice.append(ccdm_error1)
        errorDevice.append(ccdm_error2)
        errorDevice.append(ccdm_error3)
        errorDevice.append(ccdm_error4)
        errorDevice.append(ccdm_error5)
        
        self.errorByDevice = getErrors(device_id: errorDevice.first!.device_id)
        
    }
    
    func getErrors(device_id: Device) -> [Error] {
        let errors = self.errorDevice.filter { (d) -> Bool in
            d.device_id == device_id
        }
        return errors
    }
    
}
