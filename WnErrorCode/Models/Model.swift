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
        
        Error(errorCode: 01, errorText: "Сбой программы.", errorFix: "Выключить и снова включить банкомат.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 05, errorText: "Проблема с передачей данных на контроллер ChipCard.", errorFix: "Произведите сброс функциональной кнопкой. Если после этого появится сообщение '05', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 06, errorText: "Проблема с передачей данных на чипкарту/или вставлена несоответствующая чипкарта(номер чипкарты не соответствует (226_0PR).", errorFix: "Произведите сброс функциональной кнопкой. Если после этого появится сообщение '06', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 08, errorText: "Накопитель EEPROM отсутвует/неисправен.", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 09, errorText: "Переключатель блокировки разомкнут, CMD находится в позиции выдачи банкнот.", errorFix: "Задвиньте диспенсер за зеленую ручку внутрь банкомата до упора. Если после этого появится сообщение '09', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 10, errorText: "Контроллер неисправен.", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 11, errorText: "Отсутствует программа (загрузить).", errorFix: "Выполните сброс функциональной кнопкой. Если после этого появится сообщение '11', обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут.", errorFix: "Задвиньте диспенсер.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 13, errorText: "Включена блокировка аппарата.", errorFix: "Удалить пачку банкнот из диспенсера. Снять блокировку аппарата с помощью системного программного обеспечения.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CMD - v4.", errorFix: "Вставьте и зарегистрируте кассеты (необходима ретракт кассета и кассета для выдачи банкнот).", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 15, errorText: "Картридж с недействительной кодировкой, не вставлен или неисправен.", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 16, errorText: "Недействительная кодировка механизма транспортировки выдаваемых курюр.", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 17, errorText: "Неисправен ременный привод захвата.", errorFix: "Обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 18, errorText: "Застревание банкнот во время их отделения.", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождитесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 19, errorText: "Неисправен/заблокирован механизм транспортировки с захватом.", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождатесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 20, errorText: "Блокирована/неисправна стрелка узла отбраковки(MA2/1, MA2/2, SM1).", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки купюр. Установите диспенсер в рабочее положение и дождитесь готовности устройства к работе.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 21, errorText: "Ошибка измерительной станции (DDU).", errorFix: "Вызвать сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 22, errorText: "Неисправен усилитель оптического датчика или неудачна инициализация оптического датчика.", errorFix: "Освободите пути прохождения банкнот и задвиньте диспенсер. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. Если ошибка 22 не исчезнет, выполнить «Сброс» с помощью функциональной кнопки.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 23, errorText: "Неисправен / заблокирован стрелочный привод (DCM2/SM3).", errorFix: "Если диспенсер не выдвигается, выполните «Сброс» с помощью функциональной кнопки. Если ошибка 23 не исчезнет, вызовите сервисную службу. Если диспенсер выдвигается, то проверьте пути прохождения банкнот. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 24, errorText: "Реджект / ретракт привод (MA-6) неисправен / заблокирован.", errorFix: "Опорожните реджект кассету, проверьте пути прохождения банкнот. становите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 25, errorText: "Неисправен / заблокирован механизм отделения банкнот из пачки (DCM 1).", errorFix: "Проверьте пути прохождения банкнот. Установите диспенсер в рабочее положение и дождитесь готовности устройства к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 26, errorText: "Неисправен / заблокирован привод колеса отсека сбора (SM 9).", errorFix: "Освободите пути прохождения банкнот в механизме транспортировки и выдачи пачек купюр. Установите диспенсер в рабочее положение и дождитесь пока банкомат не будет готов к работе. В противном случае обратитесь в сервисную службу.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 28, errorText: "Неисправность затвора.", errorFix: "Проверьте затвор. Произведите сброс функциональной кнопкой", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 29, errorText: "Закрыт оптический датчик (манипуляция).", errorFix: "Проверьте пути прохождения банкнот в механизме транспортировки выдаваемых купюр. Произведите сброс функциональной кнопкой.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 31, errorText: "Слишком много сбоев при выводе банкнот из кассеты 1", errorFix: "Многочисленные сбои при выводе банкнот из кассеты могли быть вызваны их сильным перекосом, или банкноты при извлечении пошли неконтролируемым путем, или возникли неполадки с оптическими датчиками.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 32, errorText: "Слишком много сбоев при выводе банкнот из кассеты 2.", errorFix: "Многочисленные сбои при выводе банкнот из кассеты могли быть вызваны их сильным перекосом, или банкноты при извлечении пошли неконтролируемым путем, или возникли неполадки с оптическими датчиками.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 33, errorText: "Слишком много сбоев при выводе банкнот из кассеты 3.", errorFix: "Многочисленные сбои при выводе банкнот из кассеты могли быть вызваны их сильным перекосом, или банкноты при извлечении пошли неконтролируемым путем, или возникли неполадки с оптическими датчиками.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 34, errorText: "Слишком много сбоев при выводе банкнот из кассеты 4.", errorFix: "Многочисленные сбои при выводе банкнот из кассеты могли быть вызваны их сильным перекосом, или банкноты при извлечении пошли неконтролируемым путем, или возникли неполадки с оптическими датчиками.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 41, errorText: "Невозможно извлечение банкнот или неправильный прижим в новой кассете 1.", errorFix: "Проверьте положение и качество банкнот в кассете. Снова вставьте кассету и проверьте ее работу с помощью пробного отделения банкнот из пачки.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 42, errorText: "Невозможно извлечение банкнот или неправильный прижим в новой кассете 2.", errorFix: "Проверьте положение и качество банкнот в кассете. Снова вставьте кассету и проверьте ее работу с помощью пробного отделения банкнот из пачки.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 43, errorText: "Невозможно извлечение банкнот или неправильный прижим в новой кассете 3.", errorFix: "Проверьте положение и качество банкнот в кассете. Снова вставьте кассету и проверьте ее работу с помощью пробного отделения банкнот из пачки.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 44, errorText: "Невозможно извлечение банкнот или неправильный прижим в новой кассете 4.", errorFix: "Проверьте положение и качество банкнот в кассете. Снова вставьте кассету и проверьте ее работу с помощью пробного отделения банкнот из пачки.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 51, errorText: "Слишком много дефектных банкнот в кассете 1.", errorFix: "Проверьте содержимое кассеты.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 52, errorText: "Слишком много дефектных банкнот в кассете 2.", errorFix: "Проверьте содержимое кассеты.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 53, errorText: "Слишком много дефектных банкнот в кассете 3.", errorFix: "Проверьте содержимое кассеты.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 54, errorText: "Слишком много дефектных банкнот в кассете 4.", errorFix: "Проверьте содержимое кассеты.", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 61, errorText: "Кассета 1 неисправна.", errorFix: "Замените дефектную кассету на новую инициализированную кассету", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 62, errorText: "Кассета 2 неисправна.", errorFix: "Замените дефектную кассету на новую инициализированную кассету", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 63, errorText: "Кассета 3 неисправна.", errorFix: "Замените дефектную кассету на новую инициализированную кассету", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 64, errorText: "Кассета 4 неисправна.", errorFix: "Замените дефектную кассету на новую инициализированную кассету", errorPictire: nil, device_id: .CMD),
        Error(errorCode: 70, errorText: "Контрольно-измерительная станция (DDU) не готова к работе.", errorFix: "Проверьте, нет ли замятых банкнот в верхней части диспенсера. Проверить подключение разъемов. Если ошибка не исчезнет, обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 71, errorText: "Датчик извлечения банкноты PSDxx загрязнен или неисправен сенсор прижима кассеты 1.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 72, errorText: "Датчик извлечения банкноты PSDxx загрязнен или неисправен сенсор прижима кассеты 2.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 73, errorText: "Датчик извлечения банкноты PSDxx загрязнен или неисправен сенсор прижима кассеты 3.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 74, errorText: "Датчик извлечения банкноты PSDxx загрязнен или неисправен сенсор прижима кассеты 4.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 81, errorText: "Датчик опорожнения PSEx кассеты 1 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 82, errorText: "Датчик опорожнения PSEx кассеты 2 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 83, errorText: "Датчик опорожнения PSEx кассеты 3 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 84, errorText: "Датчик опорожнения PSEx кассеты 4 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 90, errorText: "Оптический датчик PS 1 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 91, errorText: "Оптический датчик PS 18 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 93, errorText: "Оптический датчик PS 2 загрязнен.", errorFix: "Обратитесь в  сервисную службу.", errorPictire: "CMD", device_id: .CMD),
        Error(errorCode: 95, errorText: "Оптический датчик PS27 загрязнен.", errorFix: "Вызвать сервисную службу.", errorPictire: "CMD", device_id: .CMD),
                
        
        Error(errorCode: 01, errorText: "Сбой операционной системы, сбой аппаратных средств.", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 02, errorText: "Сбой операционной системы, внутренний сбой встроенного ПО.", errorFix: "Произведите сброс.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 05, errorText: "Отсутствует связь с модулем отделения банкнот.", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 06, errorText: "Отсутствует связь с усилителем CCDM.", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 07, errorText: "Отсутствует связь с кассетным модулем.", errorFix: "Произведите сброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 08, errorText: "Батарея на плате контроллера разряжена.", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 09, errorText: "Недействительная конфигурация.", errorFix: "Перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 10, errorText: "Сбой контроллера.", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 11, errorText: "Отсутствует встроенное ПО.", errorFix: "Произведите сброс.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 12, errorText: "Защитный разъединитель разомкнут.", errorFix: "Проверьте, правильно ли задвинут CCDM в банкомат (головной и кассетный модули CCDM).", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 13, errorText: "Застревание документов в отсеке ввода/вывода.", errorFix: "Выньте документы из отсека ввода/вывода.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 14, errorText: "Отсутствует минимальная конфигурация CCDM.", errorFix: "Зарегистрируйте кассеты, используя специальную прикладную программу (например, с помощью панели оператора)", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 15, errorText: "Операционная система загружает новые файлы в контроллер CCDM.", errorFix: "Дождитесь, пока загрузятся новые файлы, и если необходимо произведите сброс.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 17, errorText: "Передача данных на интерфейсе RS 232.", errorFix: "Не значима.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 18, errorText: "Приложение пере- гружает аппаратные средства CCDM.", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: nil, device_id: .CCMD),
        Error(errorCode: 19, errorText: "Затвор заблокирован.", errorFix: "Удалите посторонние предметы на участке затвора. Произведите Сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 20, errorText: "Сбой модуля металлодетектора.", errorFix: "Произведите сброс", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 21, errorText: "Сбой поворотного транспортёра или на участке выравнивателя пачек.", errorFix: "Произведите сброс", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 22, errorText: "Застревание документа в диспенсере (распознан сбой транспортировки перед отделением документа).", errorFix: "Выньте застрявшие документы из пути прохождения бумаги в диспенсере. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 24, errorText: "Распознано застревание купюр во время их отделения.", errorFix: "Проверьте путь прохождения бумаги в диспенсере. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 25, errorText: "Распознаны посторонние предметы (датчики Холла).", errorFix: "Удалите посторонние предметы в зоне диспенсера. Произведите сброс. При необходимости перезапустите банкомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 26, errorText: "Застревание документа в зоне реджект- транспортёра.", errorFix: "Удалите документы, застрявшие между реджект-транспортёром и диспенсером или в реджект- транспортёре. При необходимости перезапустите банкомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 27, errorText: "Сбой на дисковом кулачке.", errorFix: "Произведите сброс. При необходимости перезапустите банкомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 28, errorText: "Застревание документов перед механизмом равнения или в механизме равнения.", errorFix: "Устраните застревание документов в механизме равнения. Произведите сброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 30, errorText: "Сбой считывателя магнитного кода.", errorFix: "Произведите сброс. При необходимости перезапустите банкомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_28-48", device_id: .CCMD),
        Error(errorCode: 31, errorText: "Сбой считывателя чеков / банкнот.", errorFix: "Произведите сброс. При необходимости перезапустите банкомат. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 32, errorText: "Посторонний свет в считывателе чеков / банкнот.", errorFix: "Очистите стекла сканера считывателя чеков / банкнот. Перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 33, errorText: "Проблемы обмена данными со считывателем чеков/банкнот.", errorFix: "Произведите cброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 34, errorText: "Проблемы обмена данными (интерфейс RS 232) со считывателем чеков/банкнот.", errorFix: "Произведите cброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 40, errorText: "Застревание документов в блоке транспортировки с сенсорами.", errorFix: "Устраните застревание документов на участке считывателя магнитного кода до входа в блок транспортировки с сенсорами. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 41, errorText: "Застревание документов в блоке транспортировки с сенсорами.", errorFix: "Устраните застревание документов на участке считывателя магнитного кода до входа в блок транспортировки с сенсорами. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 42, errorText: "Застревание документов в блоке транспортировки с сенсорами.", errorFix: "Устраните застревание документов на участке считывателя магнитного кода до входа в блок транспортировки с сенсорами. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 43, errorText: "Застревание документов в блоке транспортировки с сенсорами.", errorFix: "Устраните застревание документов на участке считывателя магнитного кода до входа в блок транспортировки с сенсорами. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 46, errorText: "Застревание документов между блоком транспортировки с сенсорами и реджект - транспортёром.", errorFix: "Попытайтесь устранить застревание документов между блоком транспортировки с сенсорами и реджект-транспортёром. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 47, errorText: "Ошибка инициализации реджект - транспортёра.", errorFix: "Произведите cброс. При необходимости перезапустите систему. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 48, errorText: "Застревание документов между блоком транспортировки с сенсорами и транспортером - накопителем /реджект - транспортёром.", errorFix: "Попытайтесь устранить застревание документов между блоком транспортировки с сенсорами и транспортером-накопителем или реджект-транспортёром. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 50, errorText: "Застревание бумаги на рулонном накопителе.", errorFix: "Произведите cброс. Если и после этого неисправность сохраняется, устраните застревание документов на участке рулонного накопителя.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 51, errorText: "Дефект плёнки рулонного накопителя.", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
        Error(errorCode: 52, errorText: "Дефект плёнки рулонного накопителя.", errorFix: "Обратитесь в службу технической поддержки.", errorPictire: "CCDM", device_id: .CCMD),
    
        Error(errorCode: 60, errorText: "Сбой оптического датчика VLS10.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 61, errorText: "Сбой оптического датчика VLS1.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 62, errorText: "Сбой оптического датчика VLS7.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 63, errorText: "Сбой оптического датчика VLS2 или VLS12.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 64, errorText: "Сбой оптического датчика VLS6.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 65, errorText: "Сбой оптического датчика VLS 11.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_5", device_id: .CCMD),
        Error(errorCode: 66, errorText: "Сбой оптического датчика ALS3.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        Error(errorCode: 67, errorText: "Сбой оптического датчика ALS4.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        Error(errorCode: 68, errorText: "Сбой оптического датчика ALS2.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        Error(errorCode: 69, errorText: "Сбой оптического датчика ALS1.", errorFix: "Крышка механизма равнения не закрыта: Проверьте, правильно ли закрыта крышка механизма равнения. Если это не поможет устранить сбой, отрегулируйте оптические датчики функциональным тестом №3. Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        
        Error(errorCode: 70, errorText: "Сбой оптического датчика SLS3.", errorFix: "Считыватель магнитного кода или фиктивное устройство не закрыты: Проверьте, правильно ли закрыта крышка считывателя магнитного кода или фиктивного устройства. Если это не поможет устранить сбой, отрегулируйте оптические датчики функциональным тестом №3. Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        Error(errorCode: 71, errorText: "Сбой оптического датчика SLS1.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_7", device_id: .CCMD),
        Error(errorCode: 72, errorText: "Сбой оптического датчика ELS1.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_7", device_id: .CCMD),
        Error(errorCode: 73, errorText: "Сбой оптического датчика ELS5.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_7", device_id: .CCMD),
        Error(errorCode: 74, errorText: "Сбой оптического датчика RLS1.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_7", device_id: .CCMD),
        Error(errorCode: 75, errorText: "Сбой оптического датчика RLS2.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_6", device_id: .CCMD),
        Error(errorCode: 80, errorText: "Сбой оптического датчика KLS2.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        Error(errorCode: 81, errorText: "Сбой оптического датчика KLS3.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        Error(errorCode: 82, errorText: "Сбой оптического датчика KLS8.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        Error(errorCode: 83, errorText: "Сбой оптического датчика KLS11.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        Error(errorCode: 84, errorText: "Сбой оптического датчика KLS1_5.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        Error(errorCode: 85, errorText: "Сбой оптического датчика KLS2_5.", errorFix: "Отрегулируйте оптические датчики функциональным тестом №3.Произведите сброс. В случае повторения сбоя перезапустите систему. Если неисправность не удалось устранить, обратитесь в службу технической поддержки.", errorPictire: "CCDM_4", device_id: .CCMD),
        
        Error(errorCode: 90, errorText: "Стрелка блока транспортировки с сенсорами установлена неправильно.", errorFix: "Попытайтесь устранить застревание документов на участке до кассетного модуля CCDM. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 91, errorText: "Застревание документов на стрелке в кассетном модуле CCDM.", errorFix: "Попытайтесь устранить застревание документов на участке до кассетного модуля CCDM. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 92, errorText: "Стрелка кассетного модуля CCDM установлена неправильно.", errorFix: "Попытайтесь устранить застревание документов в направлении кассеты 1. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 93, errorText: "Сбой кассеты 1.", errorFix: "Проверьте подключение кассеты 1. Вставьте кассету 1 правильно, если необходимо. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 94, errorText: "Стрелка кассетного модуля CCDM установлена неправильно.", errorFix: "Попытайтесь устранить застревание документов в направлении кассеты 2. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 95, errorText: "Сбой кассеты 2.", errorFix: "Проверьте подключение кассеты 2. Вставьте кассету 2 правильно, если необходимо. Произведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD),
        Error(errorCode: 96, errorText: "Стрелка кассетного модуля CCDM установлена неправильно.", errorFix: "Попытайтесь устранить застревание документов в направлении ретракт- кассеты. роизведите cброс. В случае повторения сбоя обратитесь в службу технической поддержки.", errorPictire: "ccdm_90-96", device_id: .CCMD)
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
