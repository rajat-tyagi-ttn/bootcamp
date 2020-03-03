//
//  ViewController.swift
//  SignUpForm
//
//  Created by Rajat Tyagi on 28/02/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    
//    public enum Operations{
//        case push
//        case pop
//    }
    
    @IBOutlet weak var birthPlaceTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var switchLabel: UILabel!
    let imagePicker = UIImagePickerController()
    let datePicker = UIDatePicker()
    let placePicker = UIPickerView()
    
    let placeArray = ["India", "U.S.A", "Japan", "China", "Germany", "Africa"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SIGN UP"
        imagePicker.delegate = self
        placePicker.delegate = self
        placePicker.dataSource = self

        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        
        birthPlaceTextField.inputView = placePicker
        createDatePicker()
        
        
    }
    
    
    func createDatePicker() {
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        
        let done = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(donePressed))
        toolbar.setItems([done], animated: true)
        
        dateTextField.inputAccessoryView = toolbar
        dateTextField.inputView = datePicker
        
        datePicker.datePickerMode = .date
        
    }
    
    @objc func donePressed() {
        
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "dd/MM/YYYY"
        
        
        dateTextField.text = dateFormatter.string(from: datePicker.date)
        self.view.endEditing(true)
    }
    
    
    @IBAction func loadImageButtonTapped(_ sender: UIButton) {
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let pickedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {

            imageView.image = pickedImage
        }
        
        dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func push() {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.recievedImage = imageView.image
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func pop() {
        self.navigationController?.popViewController(animated: true)
    }
        
    @IBAction func switchAction(sender : UISwitch!) {
        if sender.isOn{
            print("Switch is On")
           
            
        }
        else{
            print("Switch is Off")
           
        }
        
        
        
    }
    
    
    
//    public func screenTransition(_ from : UIViewController, _ to : String, _ operation : Operations ) {
//
//        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
//        let vc = storyBoard.instantiateViewController(withIdentifier: to)
//
//        switch operation{
//
//            case .push:
//                from.navigationController?.pushViewController(vc, animated: true)
//
//        case .pop:
//            self.navigationController?.popViewController(animated: true)
//
//        }
//
//
//    }
    


}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource{

func numberOfComponents(in pickerView: UIPickerView) -> Int {
    1
}


func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return placeArray.count
}

func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
      return placeArray[row]
}
  
func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
      birthPlaceTextField.text = placeArray[row]
      birthPlaceTextField.resignFirstResponder()
}

}
