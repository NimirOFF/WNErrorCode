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
                Error(errorCode: 06, errorText: "Проблема с передачей данных на чипкарту/или вставлена несоответсвующая чипкарта(номер чипкарты не соответсвует (226_0PR)", errorFix: "Произведите сброс функциональной кнопкой. Если после этого появится сообщение '06', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
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
                Error(errorCode: 22, errorText: "Неисправен усилитель оптического датчика или неудачна инициализация оптического датчика", errorFix: "Освободите пути прохождения банкнот и задвиньте диспенсер. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. Если ошибка 22 не исчезнет, выполнить «Сброс» с помощью функциональной кнопки.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 23, errorText: "Неисправен / заблокирован стрелочный привод (DCM2/SM3)", errorFix: "Если диспенсер не выдвигается, выполните «Сброс» с помощью функциональной кнопки. Если ошибка 23 не исчезнет, вызовите сервисную службу. Если диспенсер выдвигается, то проверьте пути прохождения банкнот. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 24, errorText: "Реджект / ретракт привод (MA-6) неисправен / заблокирован", errorFix: "Опорожните реджект кассету, проверьте пути прохождения банкнот. становите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 25, errorText: "Неисправен / заблокирован механизм отделения банкнот из пачки (DCM 1)", errorFix: "Проверьте пути прохождения банкнот. Установите диспенсер в рабочее положение и дождатесь готовности устройства к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 26, errorText: "Неисправен / заблокирован привод колеса отсека сбора (SM 9)", errorFix: "Освободите пути прохождения банкнот в механизме транспортировки и выдачи пачек купюр. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 28, errorText: "Неисправность затвора", errorFix: "Проверьте затвор. Произведите сброс функциональной кнопкой", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 29, errorText: "Закрыт оптический датчик (манипуляция)", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки выдаваемых купюр. Произведите сброс функциональной кнопкой.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 31, errorText: "Слишком много сбоев при выводе банкнот из кассеты x (где x = 1 - 6)", errorFix: "Многочисленные сбои при выводе банкнот из кассеты могли быть вызваны их сильным перекосом, или банкноты при извлечении пошли неконтролируемым путем, или возникли неполадки с оптическими датчиками.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 41, errorText: "Невозможно извлечение банкнот или неправильный прижим в новой кассете x (где x = 1 - 6)", errorFix: "Проверьте положение и качество банкнот в кассете. Снова вставьте кассету и проверьте ее работу с помощью пробного отделения банкнот из пачки.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 51, errorText: "Слишком много дефектных банкнот в кассете x (где x = 1 - 6).", errorFix: "Проверьте содержимое кассеты х.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 61, errorText: "Кассета неисправна", errorFix: "Замените дефектную кассету на новую инициализированную кассету", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 70, errorText: "Контрольно-измерительная станция (DDU) не готова к работе", errorFix: "Проверьте, нет ли замятых банкнот в верхней части диспенсера. Проверить подключение разъемов. Если ошибка не исчезнет, обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 71, errorText: "Датчик извлечения банкноты PSDxx загрязнен или неисправен сенсор прижима (х = 1 - 6)", errorFix: "Обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 81, errorText: "Датчик опорожнения кассеты PSEx загрязнен (х = 1 - 6)", errorFix: "Обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 90, errorText: "Оптический датчик PS 1 загрязнен", errorFix: "Обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 91, errorText: "Оптический датчик PS 18 загрязнен", errorFix: "Обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 93, errorText: "Оптический датчик PS 2 загрязнен", errorFix: "Обратитесь в  сервисную службу.", errorPictire: nil, device_id: .CMD),
                Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен", errorFix: "Вызвать сервисную службу.", errorPictire: "cmd_95", device_id: .CMD),
                
                
                
                Error(errorCode: 01, errorText: "Сбой операционной системы, сбой аппаратных средств", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 02, errorText: "Сбой операционной системы, внутренний сбой встроенного ПО", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 05, errorText: "Отсутствует связь с модулем отделения банкнот", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 06, errorText: "Отсутствует связь с усилителем CCDM", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 08, errorText: "Батарея на плате контроллера разряжена", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 09, errorText: "Недействительная конфигурация", errorFix: "Перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 10, errorText: "Сбой контроллера", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 11, errorText: "Отсутствует встроенное ПО", errorFix: "Произведите сброс.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут", errorFix: "Проверьте, правильно ли задвинут CCDM в банкомат (головной и кассетный модули CCDM).", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 13, errorText: "Застревание документов в отсеке ввода/вывода", errorFix: "Выньте документы из отсека ввода/вывода.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM", errorFix: "Зарегистрируйте кассеты, используя специальную прикладную программу (например, с помощью панели оператора)", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 15, errorText: "Операционная система загружает новые файлы в контроллер CCDM", errorFix: "Дождитесь, пока загрузятся новые файлы, и произведите, если необходимо, Сброс.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 17, errorText: "Передача данных на интерфейсе RS 232", errorFix: "Не значима.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 18, errorText: "Приложение пере- гружает аппаратные средства CCDM", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
                Error(errorCode: 19, errorText: "Затвор заблокирован", errorFix: "Удалите посторонние предметы на участке затвора. Произведите Сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 20, errorText: "Сбой модуля металлодетектора", errorFix: "Произведите сброс", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 21, errorText: "Сбой поворотного транспортёра или на участке выравнивателя пачек", errorFix: "Произведите сброс", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 22, errorText: "Застревание документа в диспенсере (распознан сбой транспортировки перед отделением документа)", errorFix: "Выньте застрявшие документы из пути прохождения бумаги в диспенсере. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения", errorFix: "Проверьте путь прохождения бумаги в диспенсере. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 25, errorText: "Распознаны посторонние предметы (датчики Холла)", errorFix: "Удалите посторонние предметы в зоне диспенсера. Произведите сброс. При необходимости перезапустите банркомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 26, errorText: "Застревание документа в зоне реджект- транспортёра", errorFix: "Удалите документы, застрявшие между реджект-транспортёром и диспенсером или в реджект- транспортёре. При необходимости перезапустите банркомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 27, errorText: "Сбой на дисковом кулачке", errorFix: "Произведите сброс. При необходимости перезапустите банркомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 28, errorText: "Застревание документов перед механизмом равнения или в механизме равнения", errorFix: "Устраните застревание документов в механизме равнения. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 30, errorText: "Сбой считывателя магнитного кода", errorFix: "Произведите сброс. При необходимости перезапустите банркомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_28-48", device_id: .CCMD),
                Error(errorCode: 31, errorText: "Сбой считывателя чеков / банкнот", errorFix: "Произведите сброс. При необходимости перезапустите банркомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
                Error(errorCode: 32, errorText: "Посторонний свет в считывателе чеков / банкнот", errorFix: "Очистите стекла сканера считывателя чеков / банкнот. Перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD)
        
        
        
        
        
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
