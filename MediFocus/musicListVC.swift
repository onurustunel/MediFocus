//
//  musicListVC.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 29.07.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import UIKit

var clickedRow = -1

class musicListVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

  
    @IBOutlet weak var musicListTableView: UITableView!
    var chosenSong = ""
    var chosenArtist = ""
    var chosenCover = ""
    var chosenSongFileName = ""
    var chosenSongFileType = ""
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ambienceArray = [ambience1,ambience2,ambience3,ambience4,ambience5,ambience6,ambience7,ambience8,ambience9,ambience10,ambience11,ambience12]
        
        focusArray = [focus1,focus2,focus3,focus4,focus5,focus6,focus7,focus8,focus9,focus10,focus11,focus12]
        
        meditationArray = [meditation1,meditation2,meditation3,meditation4,meditation5,meditation6,meditation7,meditation8,meditation9,meditation10,meditation11,meditation12]
        
        sleepArray = [sleep1,sleep2,sleep3,sleep4,sleep5,sleep6,sleep7,sleep8,sleep9,sleep10,sleep11,sleep12]
        
        musicListTableView.delegate = self
        musicListTableView.dataSource = self
        if chosenGenre == 1 {
            navigationItem.title = "Ambience"
           
        } else if chosenGenre == 2 {
            navigationItem.title = "Focus"
        }
        else if chosenGenre == 3 {
            navigationItem.title = "Meditation"
        } else {
            navigationItem.title = "Sleep"
            
        }
       
    }
 
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return ambienceArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
       
        if chosenGenre == 1 {
            let cell = musicListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! musicListTVC
            cell.accessoryType = .disclosureIndicator
            
            cell.musicNameLabel.text =  ambienceArray[indexPath.row].songName
            
            cell.musicSingerName.text = ambienceArray[indexPath.row].singerName
            cell.musicImage.image = UIImage(named: ambienceArray[indexPath.row].coverImageName)
          
            return cell
            
        }  else if chosenGenre == 2 {
            let cell = musicListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! musicListTVC
            cell.accessoryType = .disclosureIndicator
            
            cell.musicNameLabel.text =  focusArray[indexPath.row].songName
            
            cell.musicSingerName.text = focusArray[indexPath.row].singerName
            cell.musicImage.image = UIImage(named: focusArray[indexPath.row].coverImageName)
            
            return cell
            
        } else if chosenGenre == 3 {
            let cell = musicListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! musicListTVC
            
            cell.accessoryType = .disclosureIndicator
            
            cell.musicNameLabel.text =  meditationArray[indexPath.row].songName
            
            cell.musicSingerName.text = meditationArray[indexPath.row].singerName
            cell.musicImage.image = UIImage(named: meditationArray[indexPath.row].coverImageName)
            
            return cell
            
        } else {
            
                let cell = musicListTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! musicListTVC
            cell.accessoryType = .disclosureIndicator
                
                cell.musicNameLabel.text =  sleepArray[indexPath.row].songName
                
                cell.musicSingerName.text = sleepArray[indexPath.row].singerName
                cell.musicImage.image = UIImage(named: sleepArray[indexPath.row].coverImageName)
                
                return cell
            
        }
      
    }
  
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        clickedRow = indexPath.row
        
       
        if chosenGenre == 1 {
            chosenSong =  ambienceArray[indexPath.row].songName
            chosenArtist = ambienceArray[indexPath.row].singerName
            chosenCover = ambienceArray[indexPath.row].coverImageName
            chosenSongFileName = ambienceArray[indexPath.row].songFileName
            chosenSongFileType = ambienceArray[indexPath.row].songType
            
            
        }
        else if chosenGenre == 2 {
            chosenSong =  focusArray[indexPath.row].songName
            chosenArtist = focusArray[indexPath.row].singerName
            chosenCover = focusArray[indexPath.row].coverImageName
            chosenSongFileName = focusArray[indexPath.row].songFileName
            chosenSongFileType = focusArray[indexPath.row].songType

        }
        else if chosenGenre == 3 {
            chosenSong =  meditationArray[indexPath.row].songName
            chosenArtist = meditationArray[indexPath.row].singerName
            chosenCover = meditationArray[indexPath.row].coverImageName
            chosenSongFileName = meditationArray[indexPath.row].songFileName
            chosenSongFileType = meditationArray[indexPath.row].songType
            

        } else  {
            chosenSong =  sleepArray[indexPath.row].songName
            chosenArtist = sleepArray[indexPath.row].singerName
            chosenCover = sleepArray[indexPath.row].coverImageName
            chosenSongFileName = meditationArray[indexPath.row].songFileName
            chosenSongFileType = meditationArray[indexPath.row].songType
            

        }
       
        performSegue(withIdentifier: "playerVC", sender: nil)
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // code
        if segue.identifier == "playerVC" {
            
            
            let destinationVC = segue.destination as! playerVC
            destinationVC.selectedArtist = chosenArtist
            destinationVC.selectedSong = chosenSong
            destinationVC.selectedCover = chosenCover
            destinationVC.selectedSongFileName = chosenSongFileName
            destinationVC.selectedSongFileType = chosenSongFileType
            
           
        }
      
    }
   
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
        
    }

}
