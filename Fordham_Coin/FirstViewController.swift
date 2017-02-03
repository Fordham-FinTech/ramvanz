// FirstViewController.swift
// Fordham_Coin
// Created by Jake Cadez - Fordham FinTech Network
// Copyright © 2017 Jake Cadez. All rights reserved.

import UIKit
import AVFoundation

class FirstViewController: UIViewController {
    
    // Swipe to Transaction Platform
    @IBAction func user_rightswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueRight", sender: self)
    }
    
    
    // Swipe to Personal Identifier
    @IBAction func user_leftswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueLeft", sender: self)
    }
    
    // Swipe down to QR Scanner
    @IBAction func user_downswipe(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueDown", sender: self)
    }
    
    // Swipe back to Home from ID
    @IBAction func swipeback_right(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_L", sender: self)
    }

    // Swipe back to Home from Transactions 
    @IBAction func swiperback_left(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_R", sender: self)
    }
    
    // Swipe back to Home from QR Scanner
    @IBAction func swipeback_up(_ sender: UISwipeGestureRecognizer) {
        self.performSegue(withIdentifier: "SegueHome_U", sender: self)
    }
    
    // Camera Variables
    
    /*
    @IBOutlet weak var cameraView: UIView!
    var captureSession = AVCaptureSession()
    var sessionOutput = AVCaptureStillImageOutput()
    var previewLayer = AVCaptureVideoPreviewLayer()
    
    */
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
        /*
        
        // Accessing Camera
        let deviceDiscoverySession = AVCaptureDeviceDiscoverySession.init(deviceTypes: [AVCaptureDeviceType.builtInDuoCamera, AVCaptureDeviceType.builtInTelephotoCamera, AVCaptureDeviceType.builtInWideAngleCamera], mediaType: AVMediaTypeVideo, position: AVCaptureDevicePosition.back)
                //for device in devices {
            for device in (deviceDiscoverySession?.devices)! {
                if device.position == AVCaptureDevicePosition.back{
                    do{
                        let input = try AVCaptureDeviceInput(device : device as! AVCaptureDevice)
                        if captureSession.canAddInput(input) {
                            captureSession.addInput(input)
                            captureSession.startRunning()
                            sessionOutput.outputSettings = [AVVideoCodecKey : AVVideoCodecJPEG]
                        
                            if captureSession.canAddOutput(sessionOutput) {
                                captureSession.addOutput(sessionOutput)
                                previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
                                previewLayer.videoGravity = AVLayerVideoGravityResizeAspectFill
                                previewLayer.connection.videoOrientation = AVCaptureVideoOrientation.portrait
                                cameraView.layer.addSublayer(previewLayer)
                        }
                        
                    }
                    
                }
                
                catch {
                    print("Error")
                }
                
            }
        }
        
        */
        
        // Do any additional setup after loading the view, typically from a nib.

    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

