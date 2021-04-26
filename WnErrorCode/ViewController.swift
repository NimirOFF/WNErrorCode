//
//  ViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 05.04.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var devicePicker: UIPickerView!
    @IBOutlet weak var errorLabel: UILabel!

    var errorDeta = DeviceData()
    
    lazy var selectedDevice: Device = {
        errorDeta.device[0]
    }()
    lazy var selectedError: Error = {
        errorDeta.errorByDevice = errorDeta.getErrors(device_id: selectedDevice)
        return errorDeta.errorByDevice[0]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light 
        errorLabel.text = ""
        devicePicker.dataSource = self
        devicePicker.delegate = self
        updateLabel()
    }
    
    private func updateLabel(){
        errorLabel.text = "\(selectedDevice.rawValue) \(selectedError.errorCode)"
    }
    
    @IBAction func showError(_ sender: Any) {
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "cmdVC") as? errorViewController else {
            return
        }
        vc.descriptionError = selectedError
        present(vc, animated: true, completion: nil)
    }
}

extension ViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        component == 0 ? errorDeta.device.count : errorDeta.errorByDevice.count
    }
}

extension ViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        (component == 0 ? errorDeta.device[row].rawValue : String(errorDeta.errorByDevice[row].errorCode))
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            selectedDevice = errorDeta.device[row]
            errorDeta.errorByDevice = errorDeta.getErrors(device_id: selectedDevice)
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
            
            selectedError = errorDeta.errorByDevice[0]

        } else {
            selectedError = errorDeta.errorByDevice[row]
        }
        
        updateLabel()
    }
}


//    enum Errors: String{
//        case emptyText = "Код ошибки не введен"
//        case errorNotFound = "Ошибки с таким кодом не найдено"
//    }
//
//
//    @IBAction func findError (_ sender: UIButton) {
//        guard let errorText = errorField.text,
//              let errorNumber = Int(errorText)
//        else {
//            showCmdError(error: .emptyText)
//            return
//        }
//        findErrorWith(code: errorNumber)
//    }
//
//    private func findErrorWith(code: Int) {
//        if let data = CMDError.first(where: {$0.errorCode == code}) {
//            showScreen(data: data)
//        } else {
//            showCmdError(error: .errorNotFound)
//        }
//    }
//
//
//
//    private func showCmdError(error: Errors) {
//        let alert = UIAlertController.init(title: "Error", message: error.rawValue, preferredStyle: .alert)
//        alert.addAction(UIAlertAction.init(title: "Ok", style: .cancel, handler: nil))
//        show(alert, sender: nil)
//    }
//
//    private func showScreen(data: DeviceErrorCmd) {
//        if let vc = storyboard?.instantiateViewController(identifier: "cmdVC") as? cmdViewController {
//            vc.error = data
//            vc.sCode = data
//            vc.image = data
//            show(vc, sender: nil)
//        }
//    }
