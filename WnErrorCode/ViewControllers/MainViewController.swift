//
//  ViewController.swift
//  WnErrorCode
//
//  Created by Mac mini on 05.04.2021.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var devicePicker: UIPickerView!
    @IBOutlet weak var errorLabel: UILabel!

    var router: IRouterMainVC?
    private var errorData = DeviceData()
    
    private lazy var selectedDevice: Device = {
        errorData.device[0]
    }()
    private lazy var selectedError: Error = {
        errorData.errorByDevice = errorData.getErrors(device_id: selectedDevice)
        return errorData.errorByDevice[0]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        errorLabel.text = ""
        devicePicker.dataSource = self
        devicePicker.delegate = self
        updateLabel()
    }
    
    private func updateLabel(){
        errorLabel.text = "\(selectedDevice.rawValue) \(String(format: "%02d",selectedError.errorCode))"
    }
    
    @IBAction func showDescription (_ sender: UIButton) {
        showScreen()
    }
    
    private func showScreen() {
        router?.showErrorViewController(error: selectedError)
    }
}

extension MainViewController: UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        component == 0 ? errorData.device.count : errorData.errorByDevice.count
    }
}

extension MainViewController: UIPickerViewDelegate {
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        (component == 0 ? errorData.device[row].rawValue : String(format: "%02d", errorData.errorByDevice[row].errorCode))
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            selectedDevice = errorData.device[row]
            errorData.errorByDevice = errorData.getErrors(device_id: selectedDevice)
            pickerView.reloadComponent(1)
            pickerView.selectRow(0, inComponent: 1, animated: true)
            
            selectedError = errorData.errorByDevice[0]

        } else {
            selectedError = errorData.errorByDevice[row]
        }
        
        updateLabel()
    }
}
