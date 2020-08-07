//
//  playerVC.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 29.07.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import UIKit
import AVFoundation


    class playerVC: UIViewController {
    
        var player: AVAudioPlayer?
        var myBool : Bool = true
        
        @IBOutlet weak var playButton: UIButton!
        @IBOutlet weak var playlistLabel: UILabel!
        @IBOutlet weak var songNameLabel: UILabel!
        @IBOutlet weak var artistNameLabel: UILabel!
        @IBOutlet weak var coverImage: UIImageView!
        @IBOutlet weak var nextButton: UIButton!
        @IBOutlet weak var backButton: UIButton!
       
        
        var selectedSong = ""
        var selectedArtist = ""
        var selectedCover = ""
        var selectedSongFileName = ""
        var selectedSongFileType = ""
        /* ------------------------------------------ */
  
        override func viewDidLoad() {
        super.viewDidLoad()
           
            if clickedRow == 0 {
                backButton.isEnabled = false
            }
            
      
           
            
            
            songNameLabel.text = selectedSong
            artistNameLabel.text = selectedArtist
            coverImage.image = UIImage(named: selectedCover)
            
            
            
            let slider = UISlider(frame: CGRect(x: 100,
                                                y: 760,
                                                width: 220,
                                                height: 12))
            slider.value = 0.7
            slider.addTarget(self, action: #selector(didSlideSlider(_:)), for: .valueChanged)
            slider.tintColor = UIColor.white
            view.addSubview(slider)
            
            
            
            if myBool {
                let pauseImage = UIImage(named: "pause") as UIImage?
                playButton.setImage(pauseImage, for: .normal)
            }
           
         
           
            
            if chosenGenre == 1 {
                playlistLabel.text = "Ambience Playlist"
                if playlistLabel.text == "Ambience Playlist" && clickedRow + 1 == ambienceArray.count {
                    nextButton.isEnabled = false
                    
                }
                
                
            } else if chosenGenre == 2 {
                playlistLabel.text = "Focus Playlist"
                if playlistLabel.text == "Focus Playlist" && clickedRow + 1 == focusArray.count {
                    nextButton.isEnabled = false
                    
                }
            }
            else if chosenGenre == 3 {
                playlistLabel.text = "Meditation Playlist"
                if playlistLabel.text == "Meditation Playlist" && clickedRow + 1 == meditationArray.count {
                    nextButton.isEnabled = false
                    
                }
                
                
            } else {
                playlistLabel.text = "Sleep Playlist"
                if playlistLabel.text == "Sleep Playlist" && clickedRow + 1 == sleepArray.count {
                    nextButton.isEnabled = false
                    
                }
                
            }
            
        playSong()
         
       
    }
        @objc func didSlideSlider(_ slider: UISlider) {
            let value = slider.value
            player?.volume = value
        }
        
        
        override func viewWillDisappear(_ animated: Bool) {
            player?.stop()
        }

        func backSong() {
            
            if chosenGenre == 1 {
                player?.stop()
                // Code
                clickedRow -= 1
                
                if clickedRow == 0 {
                    backButton.isEnabled = false
                } else {
                    backButton.isEnabled = true
                }
                
                
                if ambienceArray.count > clickedRow  {
                   
                    
                    let urlString = Bundle.main.path(forResource: ambienceArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = ambienceArray[clickedRow].songName
                    artistNameLabel.text = ambienceArray[clickedRow].singerName
                    coverImage.image = UIImage(named: ambienceArray[clickedRow].coverImageName)
                    self.player!.play()
                }
                
            } else if chosenGenre == 2 {
                player?.stop()
                // Code
                clickedRow -= 1
                
                if clickedRow == 0 {
                    backButton.isEnabled = false
                } else {
                    backButton.isEnabled = true
                }
                
                
                if focusArray.count > clickedRow  {
                  
                    
                    let urlString = Bundle.main.path(forResource: focusArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = focusArray[clickedRow].songName
                    artistNameLabel.text = focusArray[clickedRow].singerName
                    coverImage.image = UIImage(named: focusArray[clickedRow].coverImageName)
                    self.player!.play()
                }
            }
            else if chosenGenre == 3 {
                player?.stop()
                // Code
                clickedRow -= 1
                
                if clickedRow == 0 {
                    backButton.isEnabled = false
                } else {
                    backButton.isEnabled = true
                }
                
                
                if meditationArray.count > clickedRow  {
                    
                    
                    let urlString = Bundle.main.path(forResource: meditationArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = meditationArray[clickedRow].songName
                    artistNameLabel.text = meditationArray[clickedRow].singerName
                    coverImage.image = UIImage(named: meditationArray[clickedRow].coverImageName)
                    self.player!.play()
                }
            } else {
                player?.stop()
                // Code
                clickedRow -= 1
                
                if clickedRow == 0 {
                    backButton.isEnabled = false
                } else {
                    backButton.isEnabled = true
                }
                
                
                if sleepArray.count > clickedRow  {
                  
                    
                    let urlString = Bundle.main.path(forResource: sleepArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = sleepArray[clickedRow].songName
                    artistNameLabel.text = sleepArray[clickedRow].singerName
                    coverImage.image = UIImage(named: sleepArray[clickedRow].coverImageName)
                    self.player!.play()
                }
                
            }
    
            
        }
        func nextSong() {
          
            if chosenGenre == 1 {
                player?.stop()
                // Code
                clickedRow += 1
                
                if clickedRow == ambienceArray.count - 1 {
                    nextButton.isEnabled = false
                } else {
                    nextButton.isEnabled = true
                }
                
                
                if ambienceArray.count > clickedRow  {
                   
                    
                    let urlString = Bundle.main.path(forResource: ambienceArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = ambienceArray[clickedRow].songName
                    artistNameLabel.text = ambienceArray[clickedRow].singerName
                    coverImage.image = UIImage(named: ambienceArray[clickedRow].coverImageName)
                    self.player!.play()
                }
                
            } else if chosenGenre == 2 {
                player?.stop()
                // Code
                clickedRow += 1
                
                if clickedRow == focusArray.count - 1 {
                    nextButton.isEnabled = false
                } else {
                    nextButton.isEnabled = true
                }
                
                
                if focusArray.count > clickedRow  {
                    
                    
                    let urlString = Bundle.main.path(forResource: focusArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = focusArray[clickedRow].songName
                    artistNameLabel.text = focusArray[clickedRow].singerName
                    coverImage.image = UIImage(named: focusArray[clickedRow].coverImageName)
                    self.player!.play()
                }
            }
            else if chosenGenre == 3 {
                player?.stop()
                // Code
                clickedRow += 1
                
                if clickedRow == 0 {
                    nextButton.isEnabled = false
                } else {
                    nextButton.isEnabled = true
                }
                
                
                if meditationArray.count > clickedRow  {
                    
                    
                    let urlString = Bundle.main.path(forResource: meditationArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = meditationArray[clickedRow].songName
                    artistNameLabel.text = meditationArray[clickedRow].singerName
                    coverImage.image = UIImage(named: meditationArray[clickedRow].coverImageName)
                    self.player!.play()
                }
            } else {
                player?.stop()
                // Code
                clickedRow += 1
                
                if clickedRow == 0 {
                    nextButton.isEnabled = false
                } else {
                    nextButton.isEnabled = true
                }
                
                
                if sleepArray.count > clickedRow  {
                    
                    
                    let urlString = Bundle.main.path(forResource: sleepArray[clickedRow].songFileName, ofType: selectedSongFileType)
                    
                    do {
                        try AVAudioSession.sharedInstance().setMode(.default)
                        try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                        
                        guard let urlString = urlString else {
                            print("urlstring is nil")
                            return
                        }
                        
                        player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                        
                        guard let player = player else {
                            print("player is nil")
                            return
                        }
                        player.volume = 0.9
                        
                        
                    }
                    catch {
                        print("error occurred")
                    }
                    
                    songNameLabel.text = sleepArray[clickedRow].songName
                    artistNameLabel.text = sleepArray[clickedRow].singerName
                    coverImage.image = UIImage(named: sleepArray[clickedRow].coverImageName)
                    self.player!.play()
                }
                
            }
         
        }
        
        
        func playSong() {
            
            let urlString = Bundle.main.path(forResource: selectedSongFileName, ofType: selectedSongFileType)
            
            do {
                try AVAudioSession.sharedInstance().setMode(.default)
                try AVAudioSession.sharedInstance().setActive(true, options: .notifyOthersOnDeactivation)
                
                guard let urlString = urlString else {
                    print("urlstring is nil")
                    return
                }
                
                player = try AVAudioPlayer(contentsOf: URL(string: urlString)!)
                
                guard let player = player else {
                    print("player is nil")
                    return
                }
                player.volume = 0.9
                
                player.play()
            }
            catch {
                print("error occurred")
            }
        }
        
        @IBAction func pauseClicked(_ sender: Any) {
            if myBool {
                let pauseImage = UIImage(named: "play") as UIImage?
               playButton.setImage(pauseImage, for: .normal)
                 player?.pause()
                myBool = false
                UIView.animate(withDuration: 0.2, animations: {
                    self.coverImage.frame = CGRect(x: 66,
                                                   y: 247,
                                                   width: 280,
                                                   height: 280)
                })
                
                
            } else {
                let playImage = UIImage(named: "pause") as UIImage?
                 playButton.setImage(playImage, for: .normal)
                player?.play()
                myBool = true
                UIView.animate(withDuration: 0.2, animations: {
                    self.coverImage.frame = CGRect(x: 46,
                                                   y: 227,
                                                   width: 323,
                                                   height: 323)
                })
                
                
            }
           
            
            
        }
        
        @IBAction func backClicked(_ sender: Any) {
            nextButton.isEnabled = true
            backSong()
            
        }
        
        @IBAction func nextClicked(_ sender: Any) {
             backButton.isEnabled = true
            nextSong()
            
        }
        

}
