//
//  SLImagePickerButton.swift
//  Pods-SLUtility_Example
//
//  Created by Ankit@solulab on 20/03/19.
//



import UIKit
import Foundation

public class SLButtonImagePicker: UIButton, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
    
    public typealias ImagePickerResponse = ([UIImagePickerController.InfoKey : Any]?) -> ()
    public var imagePicker = UIImagePickerController()
    public let viewController = UIApplication.shared.delegate?.window??.rootViewController
    public var pickedImage: ImagePickerResponse!
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override public func draw(_ rect: CGRect) {
        // Drawing code
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        imagePicker.delegate = self
        //Add action for button.
        self.addTarget(self, action: #selector(buttonOnClick(_:)), for: UIControl.Event.touchUpInside)
    }
    
    //MARK: Image Picker Method
    
    @objc public func buttonOnClick(_ sender: UIButton)
    {
        let alert = UIAlertController(title: "Choose Image", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camera", style: .default, handler: { _ in
            self.openCamera()
        }))
        
        alert.addAction(UIAlertAction(title: "Gallery", style: .default, handler: { _ in
            self.openGallary()
        }))
        
        alert.addAction(UIAlertAction.init(title: "Cancel", style: .cancel, handler: nil))
        
        /*If you want work actionsheet on ipad
         then you have to use popoverPresentationController to present the actionsheet,
         otherwise app will crash on iPad */
        switch UIDevice.current.userInterfaceIdiom {
        case .pad:
            alert.popoverPresentationController?.sourceView = sender
            alert.popoverPresentationController?.sourceRect = sender.bounds
            alert.popoverPresentationController?.permittedArrowDirections = .up
        default:
            break
        }
        
        viewController?.present(alert, animated: true, completion: nil)
    }
    
    public func openCamera()
    {
        if(UIImagePickerController.isSourceTypeAvailable(UIImagePickerController.SourceType.camera))
        {
            imagePicker.sourceType = UIImagePickerController.SourceType.camera
            viewController?.present(imagePicker, animated: true, completion: nil)
        }
        else
        {
            let alert  = UIAlertController(title: "Warning", message: "ohh no.. You don't have camera?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            viewController?.present(alert, animated: true, completion: nil)
        }
    }
    
    public func openGallary()
    {
        imagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        viewController?.present(imagePicker, animated: true, completion: nil)
    }
    
    //MARK: ImagePicker CallBack methods
    //This method provide image to your respactive class..
    public func pickImageFromPicker(isAllowEditingImage: Bool = true, pickedImageCallBack: @escaping ImagePickerResponse) {
        imagePicker.allowsEditing = isAllowEditingImage
        self.pickedImage = pickedImageCallBack
    }
    
    //Cancel image picker.
    public func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.pickedImage(nil)
        picker.dismiss(animated: true, completion: nil)
    }
    
    public func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // it will provide cropped image original image in the info.
        self.pickedImage(info)
        picker.dismiss(animated: true, completion: nil)
    }
}
