// CameraViewController.swift
// Fordham_Coin
// Created by Jake Cadez - Fordham Coin LLC
// Copyright © 2017 Jake Cadez. All rights reserved.

import UIKit
import AVFoundation

class CameraViewController: UIViewController {
   
    
    @IBOutlet weak var CameraView: UIView!

    var captureSession = AVCaptureSession()
    var sessionOutput = AVCapturePhotoOutput()
    var previewlayer = AVCaptureVideoPreviewLayer()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let deviceSession = AVCaptureDeviceDiscoverySession(deviceTypes: [.builtInDuoCamera,.builtInTelephotoCamera,.builtInWideAngleCamera], mediaType: AVMediaTypeVideo, position: .unspecified)

        for device in (deviceSession?.devices)!{
            if device.position == AVCaptureDevicePosition.back {
                do {
                    
                    let input = try AVCaptureDeviceInput(device: device)
                    if captureSession.canAddInput(input) {
                        captureSession.addInput(input)
                       
                        if captureSession.canAddOutput(sessionOutput) {
                            captureSession.addOutput(sessionOutput)
                        
                            previewlayer = AVCaptureVideoPreviewLayer(session: captureSession)
                            previewlayer.videoGravity = AVLayerVideoGravityResizeAspectFill
                            previewlayer.connection.videoOrientation = .portrait
                            
                            CameraView.layer.addSublayer(previewlayer)
                            
                            previewlayer.position = CGPoint (x: self.CameraView.frame.width / 2, y: self.CameraView.frame.height / 2)
                            previewlayer.bounds = CameraView.frame
                            
                            captureSession.startRunning()
                            
                        }
                    
                    }
                    
                } catch let avError {
                    print(avError)
                }
            }
        }
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
