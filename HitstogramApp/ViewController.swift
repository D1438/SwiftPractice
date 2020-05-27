//
//  ViewController.swift
//  HitstogramApp
//
//  Created by 石澤大輔 on 2020/05/23.
//  Copyright © 2020 石澤大輔. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate,  UIImagePickerControllerDelegate{

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var pictureImage: UIImageView!
    
    @IBAction func selectButtonAction(_ sender: Any) {
//        カメラかフォトライブラリを選択する
        let alertController = UIAlertController(title: "確認", message: "選択してください。", preferredStyle: .actionSheet)
//        カメラが使用可能かチェック
        if  UIImagePickerController.isSourceTypeAvailable(.camera) {
//            カメラの選択肢を追加
            let cameraAction = UIAlertAction(title: "カメラ", style: .default, handler: {
                (action) in
//                カメラ起動
                let imagePickerController = UIImagePickerController()
                imagePickerController.sourceType = .camera
                imagePickerController.delegate = self
                self.present(self, animated: true, completion: nil)
            })
            alertController.addAction(cameraAction)
        }
        
//        フォトライブラリが使用可能かチェック
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            let photoLibraryAction = UIAlertAction(title: "フォトライブラリ", style: .default, handler: {
                (action) in
                let imagePickerController = UIImagePickerController()
                imagePickerController.sourceType = .photoLibrary
                imagePickerController.delegate = self
                self.present(self, animated: true, completion: nil)
            })
            alertController.addAction(photoLibraryAction)
        }
    }
    
    @IBAction func deleteButtonAction(_ sender: Any) {
    }
    
}

 
