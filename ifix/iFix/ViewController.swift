//
//  ViewController.swift
//  Udder
//
//  Created by Asgedom Teklu on 10/29/18.
//  Copyright © 2018 Asgedom Y. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate { 
    
    // linked labels and UiButtons
    
    @IBOutlet weak var ifix: UILabel!
    @IBOutlet weak var UIImage: UIImageView!
    let someImageView: UIImageView = {
        let theImageView = UIImageView()
        theImageView.translatesAutoresizingMaskIntoConstraints = false //You need to call this property so the image is added to your view
        return theImageView
    }()
    
    
    @IBAction func UploadImage(_ sender: UIButton) {
        let myPickerController = UIImagePickerController()
        myPickerController.delegate = self;
        myPickerController.sourceType =  UIImagePickerController.SourceType.photoLibrary
        self.present(myPickerController, animated: true, completion: nil)
    
    }
        @objc func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey: Any])
        {
            let image_data = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
            let imageData:Data = image_data!.pngData()!
            _ = imageData.base64EncodedString()
            self.dismiss(animated: true, completion: nil)
        }
    
    
    @IBAction func UIShuffle(_ sender: UIButton) {
    }
    
    
    @IBAction func UIReset(_ sender: UIButton) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.addSubview(someImageView) //This add it the view controller without constraints
        someImageViewConstraints() //This function is outside the viewDidLoad function that controls the constraints
        
    }
    // do not forget the `.isActive = true` after every constraint
    func someImageViewConstraints() {
        someImageView.widthAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.heightAnchor.constraint(equalToConstant: 180).isActive = true
        someImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        someImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 28).isActive = true


}

}

