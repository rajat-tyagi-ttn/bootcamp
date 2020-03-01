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
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var switchLabel: UILabel!
    let imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "SIGN UP"
        imagePicker.delegate = self
        
        imageView.layer.borderWidth = 1
        imageView.layer.masksToBounds = false
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.cornerRadius = imageView.frame.height/2
        imageView.clipsToBounds = true
        
        // Do any additional setup after loading the view.
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


