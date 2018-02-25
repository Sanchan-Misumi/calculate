//
//  ViewController.swift
//  Calculator
//
//  Created by 美冬 on 2017/08/29.
//  Copyright © 2017年 美冬. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    @IBOutlet var label: UILabel!//計算結果を表示するラベル
    var number1: Int = 0
    var number2: Int = 0
    var number3: Int = 0
    var ope: Int = 0 //どの四則演算をするか判定するための変数
    var answer: Int = 0
    
     var fileNameArray = [String]()
    
    //音楽を再生するための変数
    var audioPlayer : AVAudioPlayer!
    
    @IBAction func selet1(){
        number1 = number1*10 + 1
        label.text = String(number1)
        
        let audioPath = URL(fileURLWithPath: Bundle.main.path(forResource: String(describing: fileNameArray), ofType: "mp3")!)
        
        audioPlayer = try? AVAudioPlayer(contentsOf: audioPath)
        
        //音楽を再生
        audioPlayer.play()
    }
    @IBAction func selet2(){
        number1 = number1*10 + 2
        label.text = String(number1)
    }
    @IBAction func selet3(){
        number1 = number1*10 + 3
        label.text = String(number1)
    }
    @IBAction func selet4(){
        number1 = number1*10 + 4
        label.text = String(number1)
    }
    @IBAction func selet5(){
        number1 = number1*10 + 5
        label.text = String(number1)
    }
    @IBAction func selet6(){
        number1 = number1*10 + 6
        label.text = String(number1)
    }
    @IBAction func selet7(){
        number1 = number1*10 + 7
        label.text = String(number1)
    }
    @IBAction func selet8(){
        number1 = number1*10 + 8
        label.text = String(number1)
    }
    @IBAction func selet9(){
        number1 = number1*10 + 9
        label.text = String(number1)
    }
    
    @IBAction func plus(){
        number2 = number1
        number1 = 0
        ope = 1
    }
    @IBAction func minus(){
        number2 = number1
        number1 = 0
        ope = 2
    }
    @IBAction func kakeru(){
        number2 = number1
        number1 = 0
        ope = 3
    }
    @IBAction func waru(){
        number2 = number1
        number1 = 0
        ope = 4
    }

    @IBAction func equsl(){
        if ope == 1 {
            //プラスのとき
            number3 = number2 + number1
        }else if ope == 2 {
            //マイナスのとき
            number3 = number2 - number1

        }else if ope == 3{
            number3 = number2 * number1
        }else if ope == 4{
            number3 = number2 / number1
        }
        
        answer = number3
    
        label.text = String(number3)
    }
    @IBAction func clear(){
        number1 = 0
        number2 = 0
        number3 = 0
        ope = 0
         label.text = String(number1)
    }
    
    @IBAction func answer1(){
        number1 = answer
        label.text = String(number1)
        
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        fileNameArray = ["catvoice", "cat10"]
//        // 再生する audio ファイルのパスを取得
//        let audioPath = Bundle.main.path(forResource: "catvoice", ofType:"mp3")!
//        let audioUrl = URL(fileURLWithPath: audioPath)
//
//
//        // auido を再生するプレイヤー
//        var audioError:NSError?
//        do {
//            audioPlayer = try AVAudioPlayer(contentsOf: audioUrl)
//        } catch let error as NSError {
//            audioError = error
//            audioPlayer = nil
//        }
//
//        // エラーが起きたとき
//        if let error = audioError {
//            print("Error \(error.localizedDescription)")
//        }
//
//        audioPlayer.delegate = self
//        audioPlayer.prepareToPlay()
//
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}
