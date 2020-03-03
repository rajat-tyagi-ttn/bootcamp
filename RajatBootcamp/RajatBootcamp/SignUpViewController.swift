//
//  SignUpViewController.swift
//  RajatBootcamp
//
//  Created by Rajat Tyagi on 02/03/20.
//  Copyright © 2020 Rajat Tyagi. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController,UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var birthPlaceTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var privacySwitch: UISwitch!
    @IBOutlet weak var dateTextField: UITextField!
    let datePicker = UIDatePicker()
    let placePicker = UIPickerView()
    let imagePicker = UIImagePickerController()
    
    let placeArray = ["India", "U.S.A", "Japan", "China", "Germany", "Africa"]
    
    override func viewDidLoad() {
        self.title = "SIGN UP"
        super.viewDidLoad()
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
    
    
    @IBAction func loadImageTapped(_ sender: UIButton) {
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
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        vc.recievedImage = imageView.image
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func switchAction(_ sender: UISwitch) {
        if sender.isOn{
                   print("Switch is On")
                  
                   
               }
               else{
                   print("Switch is Off")
                  
               }
    }
    
}
extension SignUpViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    
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
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


