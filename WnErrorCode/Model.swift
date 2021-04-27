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
    var errorFix    : String
    var errorPictire: String?
    var device_id   : Device
}

class DeviceData {
    
    let device: [Device] = [.CMD, .CCMD]
    let errorDevice = [
                Error(errorCode: 01, errorText: "Сбой программы. Выключите и снова включите банкомат", errorFix: "Выключить и снова включить банкомат.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 05, errorText: "Проблема с передачей данных на контроллер ChipCard.", errorFix: "Произведите сброс функциональной кнопкойю Если после этого появится сообщение '05', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 06, errorText: "Проблема с передачей данных на чипкарту/или вставлена несоответсвующая чипкарта(номер чипкарты не соответсвует (226_0PR)", errorFix: "Произведите сброс функциональной кнопкойю Если после этого появится сообщение '06', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 08, errorText: "Накопитель EEPROM отсутвует/неисправен", errorFix: "Обратитесь в сервисную службу", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 09, errorText: "Переключатель блокировки разомкнут, CMD находится в позиции выдачи банкнот", errorFix: "Задвиньте диспенсер за зеленую ручку внутрь банкомата до упора. Если после этого появится сообщение '09', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 10, errorText: "Контроллер неисправен", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 11, errorText: "Отсутствует программа (загрузить)", errorFix: "Выполните сброс функциональной кнопкой. Если после этого появится сообщение '11', обратитесь в сервисную службу", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorFix: "Задвиньте диспенсер", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 13, errorText: "Включена блокировка аппарата", errorFix: "Удалить пачку банкнот из диспенсера. Снять блокировку аппарата с помощью системного программного обеспечения.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CMD - v4", errorFix: "Вставьте и зарегистрируте кассеты (необходима ретракт кассета и кассета для выдачи банкнот)", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 15, errorText: "Картридж с недействительной кодировкой, не вставлен или неисправен", errorFix: "Обратитесь в сервисную службу", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 16, errorText: "Недействительная кодировка маханизма траспортировки выдаваемых курюр", errorFix: "Обратитесь в сервисную службу", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 17, errorText: "Неисправен ременный привод захвата", errorFix: "Обратитесь в сервисную службу", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 18, errorText: "Застревание банкнот во время их отделения", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождатесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 19, errorText: "Неисправен/заблокирован механизм транспортировки с захватом ", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождатесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 20, errorText: "Блокирована/неисправна стрелка узла отбраковки(MA2/1, MA2/2, SM1)", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождатесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 21, errorText: "Ошибка измерительной станции (DDU)", errorFix: "Вызвать сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен", errorFix: "Вызвать сервисную службу.", errorPictire: "cmd_95", device_id: .CMD),
                
                
                
                Error(errorCode: 01, errorText: "Сбой операционной системы, сбой аппаратных средств", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 02, errorText: "Сбой операционной системы, внутренний сбой встроенного ПО", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 05, errorText: "Отсутствует связь с модулем отделения банкнот", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 06, errorText: "Отсутствует связь с усилителем CCDM", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 08, errorText: "Батарея на плате контроллера разряжена", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 09, errorText: "Недействительная конфигурация", errorFix: "Перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 10, errorText: "Сбой контроллера", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 11, errorText: "Отсутствует встроенное ПО", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorFix: "Проверьте, правильно ли задвинут CCDM в банкомат (головной и кассетный модули CCDM).", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 13, errorText: "Застревание документов в отсеке ввода/вывода", errorFix: "Выньте документы из отсека ввода/вывода.", errorPictire: "ccdm_13-26", device_id: .CCMD),
                Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM", errorFix: "Зарегистрируйте кассеты, используя специальную прикладную программу (например, с помощью панели оператора)", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 15, errorText: "Операционная система загружает новые файлы в контроллер CCDM", errorFix: "Дождитесь, пока загрузятся новые файлы, и произведите, если необходимо, Сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 17, errorText: "Передача данных на интерфейсе RS 232", errorFix: "Не значима.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 18, errorText: "Приложение пере- гружает аппаратные средства CCDM", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 19, errorText: "Затвор заблокирован", errorFix: "Удалите посторонние предметы на участке затвора. Произведите Сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_13-26", device_id: .CCMD),
                Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения", errorFix: "Проверьте путь прохождения бумаги в диспенсере. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_13-26", device_id: .CCMD)
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
