//
//  ViewController.swift
//  MediFocus
//
//  Created by MEHMET ONUR ÜSTÜNEL on 29.07.2020.
//  Copyright © 2020 MEHMET ONUR ÜSTÜNEL. All rights reserved.
//

import UIKit


var chosenGenre = 0

var ambience1 = ambience(songFileName: "song1", songType: "mp3", songName: "Dusk at the Market", singerName: "Jeremy Soule", coverImageName: "File1.jpg")
var ambience2 = ambience(songFileName: "song2", songType: "mp3", songName: "Dyrford", singerName: "Justin Bell", coverImageName: "File2.jpg")
var ambience3 = ambience(songFileName: "song3", songType: "mp3", songName: "A Tavern On The Riverbank", singerName: "Adam Skorupa", coverImageName: "File3.jpg")
var ambience4 = ambience(songFileName: "song4", songType: "mp3", songName: "The Tree When We Sat Once", singerName: "Mikolai Stroinski", coverImageName: "File4.jpg")
var ambience5 = ambience(songFileName: "song5", songType: "mp3", songName: "The Musty Scent Of Fresh Pate", singerName: "Percival Schutt", coverImageName: "File5.jpg")
var ambience6 = ambience(songFileName: "song6", songType: "mp3", songName: "The Forest Queen", singerName: "Peter Gundry", coverImageName: "File6.jpg")
var ambience7 = ambience(songFileName: "song1", songType: "mp3", songName: "The Fox and the Farmer", singerName: "Justin Bell", coverImageName: "File1.jpg")
var ambience8 = ambience(songFileName: "song2", songType: "mp3", songName: "A Hard Teacher", singerName: "Hans Zimmer", coverImageName: "File2.jpg")
var ambience9 = ambience(songFileName: "song3", songType: "mp3", songName: "First Class", singerName: "Henry Jackman", coverImageName: "File3.jpg")
var ambience10 = ambience(songFileName: "song4", songType: "mp3", songName: "Idyll's End", singerName: "Hans Zimmer", coverImageName: "File4.jpg")
var ambience11 = ambience(songFileName: "song5", songType: "mp3", songName: "Magnus Smiles on Suran", singerName: "Brad Derrick", coverImageName: "File5.jpg")
var ambience12 = ambience(songFileName: "song6", songType: "mp3", songName: "Ori, Lost in the Storm", singerName: "Gareth Coker", coverImageName: "File6.jpg")


/* --------------------------------------------------------------------- */

var focus1 = focus(songFileName: "song1", songType: "mp3", songName: "City Lights", singerName: "HAEVN", coverImageName: "File2.jpg")
var focus2 = focus(songFileName: "song2", songType: "mp3", songName: "Ricochet", singerName: "Haux", coverImageName: "File5.jpg")
var focus3 = focus(songFileName: "song3", songType: "mp3", songName: "How Long", singerName: "Alice on the Roof", coverImageName: "File6.jpg")
var focus4 = focus(songFileName: "song4", songType: "mp3", songName: "Solid Ground", singerName: "Michael Kiwanuka", coverImageName: "File4.jpg")
var focus5 = focus(songFileName: "song5", songType: "mp3", songName: "Some Place Else", singerName: "MorMor", coverImageName: "File1.jpg")
var focus6 = focus(songFileName: "song6", songType: "mp3", songName: "Supermarkets", singerName: "Birthh", coverImageName: "File3.jpg")
var focus7 = focus(songFileName: "song1", songType: "mp3", songName: "Brutally", singerName: "Suki Waterhouse", coverImageName: "File2.jpg")
var focus8 = focus(songFileName: "song2", songType: "mp3", songName: "Break You Down", singerName: "Wild Child", coverImageName: "File5.jpg")
var focus9 = focus(songFileName: "song3", songType: "mp3", songName: "Handchuffs", singerName: "Baker Grace", coverImageName: "File6.jpg")
var focus10 = focus(songFileName: "song4", songType: "mp3", songName: "Late Night Feelings", singerName: "Mark Ronson", coverImageName: "File4.jpg")
var focus11 = focus(songFileName: "song5", songType: "mp3", songName: "Waterbed", singerName: "Hearts & Colors", coverImageName: "File1.jpg")
var focus12 = focus(songFileName: "song6", songType: "mp3", songName: "Never the Same", singerName: "Where is Maps", coverImageName: "File3.jpg")

/* --------------------------------------------------------------------- */

var meditation1 = meditation(songFileName: "song1", songType: "mp3", songName: "Hypnosis", singerName: "Benjamin Martins", coverImageName: "File5.jpg")
var meditation2 = meditation(songFileName: "song2", songType: "mp3", songName: "Supernova", singerName: "Adrian Coly", coverImageName: "File6.jpg")
var meditation3 = meditation(songFileName: "song3", songType: "mp3", songName: "More Than Anything", singerName: "Desolate Horizons", coverImageName: "File3.jpg")
var meditation4 = meditation(songFileName: "song4", songType: "mp3", songName: "Trust the Universe", singerName: "Chama Wijnen", coverImageName: "File4.jpg")
var meditation5 = meditation(songFileName: "song5", songType: "mp3", songName: "Wacht op mij", singerName: "Cyrano Brussee", coverImageName: "File1.jpg")
var meditation6 = meditation(songFileName: "song6", songType: "mp3", songName: "Segments", singerName: "Robert Farrugia", coverImageName: "File2.jpg")
var meditation7 = meditation(songFileName: "song1", songType: "mp3", songName: "Nebula", singerName: "Tejal Yann", coverImageName: "File5.jpg")
var meditation8 = meditation(songFileName: "song2", songType: "mp3", songName: "Cold Winds", singerName: "Seandogg Calma", coverImageName: "File6.jpg")
var meditation9 = meditation(songFileName: "song3", songType: "mp3", songName: "Noctis", singerName: "Rosa Lovstrom", coverImageName: "File3.jpg")
var meditation10 = meditation(songFileName: "song4", songType: "mp3", songName: "Lost at Sea", singerName: "The Tides", coverImageName: "File4.jpg")
var meditation11 = meditation(songFileName: "song5", songType: "mp3", songName: "Bouncing Clouds", singerName: "Sava Sol", coverImageName: "File1.jpg")
var meditation12 = meditation(songFileName: "song6", songType: "mp3", songName: "Autumn Forest", singerName: "Park Leaf", coverImageName: "File2.jpg")
/* --------------------------------------------------------------------- */

var sleep1 = sleep(songFileName: "song1", songType: "mp3", songName: "Euphrosyne", singerName: "Ariette Leduc", coverImageName: "File4.jpg")
var sleep2 = sleep(songFileName: "song2", songType: "mp3", songName: "Rainy Clouds", singerName: "John Ocean", coverImageName: "File5.jpg")
var sleep3 = sleep(songFileName: "song3", songType: "mp3", songName: "Farewall", singerName: "Echo River", coverImageName: "File2.jpg")
var sleep4 = sleep(songFileName: "song4", songType: "mp3", songName: "Kritagya", singerName: "Elise Ryen", coverImageName: "File1.jpg")
var sleep5 = sleep(songFileName: "song5", songType: "mp3", songName: "Nechama", singerName: "Irizarry Barraza", coverImageName: "File5.jpg")
var sleep6 = sleep(songFileName: "song6", songType: "mp3", songName: "Intermezzo", singerName: "Levi Stills", coverImageName: "File3.jpg")
var sleep7 = sleep(songFileName: "song1", songType: "mp3", songName: "Snowdonia", singerName: "Leah Day", coverImageName: "File4.jpg")
var sleep8 = sleep(songFileName: "song2", songType: "mp3", songName: "Yearning", singerName: "Samira Tesfay", coverImageName: "File5.jpg")
var sleep9 = sleep(songFileName: "song3", songType: "mp3", songName: "Reaching", singerName: "Chama Wijnen", coverImageName: "File2.jpg")
var sleep10 = sleep(songFileName: "song4", songType: "mp3", songName: "Peaceful Mind", singerName: "Doosi", coverImageName: "File1.jpg")
var sleep11 = sleep(songFileName: "song5", songType: "mp3", songName: "Sunrise Glory", singerName: "Naturally Recurring", coverImageName: "File5.jpg")
var sleep12 = sleep(songFileName: "song6", songType: "mp3", songName: "Ethernal Beauty", singerName: "Degravitated", coverImageName: "File3.jpg")


var ambienceArray = [ambience]()
var focusArray = [focus]()
var meditationArray = [meditation]()
var sleepArray = [sleep]()


class ViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storedName = UserDefaults.standard.object(forKey: "username")
  
        
        if let newUserName = storedName as? String {
            usernameLabel.text = newUserName
            username = usernameLabel.text!
            
        }
        
        chosenGenre = 0
        usernameLabel.text = username.capitalized
        
    }
    
    @IBAction func ambienceButtonClicked(_ sender: Any) {
        chosenGenre = 1
        performSegue(withIdentifier: "musicListVC", sender: nil)
    }
    
    
    @IBAction func focusButtonClicked(_ sender: Any) {
        chosenGenre = 2
         performSegue(withIdentifier: "musicListVC", sender: nil)
        
        
    }
    
    
    @IBAction func meditationButtonClicked(_ sender: Any) {
        chosenGenre = 3
         performSegue(withIdentifier: "musicListVC", sender: nil)
    }
    
    
    @IBAction func sleepButtonClicked(_ sender: Any) {
        chosenGenre = 4
         performSegue(withIdentifier: "musicListVC", sender: nil)
        
        
    }
    
    
}

