//
//  Player.swift
//  11-NavegationLink
//
//  Created by Cruz Torres on 02/06/21.
//  Copyright © 2021 Cruz Torres. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Player: Identifiable {
    var id: Int
    var numero: String
    var name: String
    var imageName: String
    var imageCard: String
    var seasons: String
    var rings: String
    var assists: String
    var biography: String
}


let players = [
    
    Player(id: 0, numero: "1", name: "Randy Brown", imageName: "Randy Brown", imageCard: "Randy Brown-Card", seasons: "12", rings: "3", assists: "4.0", biography: "Randy Brown (born May 22, 1968) is an American retired basketball player and former coach for the Chicago Bulls of the National Basketball Association (NBA). Brown was a guard who played at New Mexico State University and the University of Houston.Brown began his professional fighting career in 2014, making his professional debut at Ring of Combat 48. Brown won the fight against Steve Tyrrell via submission in round one. He trains out of Budokan Martial Arts Academy, a Renzo Gracie BJJ affiliate."),

    Player(id: 1, numero: "5", name: "Rusty LaRue", imageName: "Rusty LaRue", imageCard: "Rusty LaRue-Card", seasons: "5", rings: "0", assists: "4", biography: "Rusty LaRue (born December 10, 1973) is an American former multi-sport athlete who played basketball, baseball, and football at Wake Forest University. He later played for the Chicago Bulls team that won the 1998 National Basketball Association championship. LaRue arguably had his most collegiate success on the football field. As a freshman quarterback in 1992, he was a member of Wake Forest's football team that took home an Independence Bowl victory, and during his senior year he broke eight NCAA records for passing, including the record for most completions in one game (55)."),
    
    Player(id: 2, numero: "7", name: "Toni Kukoc", imageName: "Toni Kukoc", imageCard: "Toni Kukoc-Card", seasons: "7", rings: "3", assists: "3", biography: "(September 18, 1968) is a Croatian former professional basketball player who is currently Special Advisor to Jerry Reinsdorf, the owner of the Chicago Bulls. After a highly successful period in European basketball. Kukoč was renowned for his versatility and passing ability; although his natural position was small forward, he played all five positions on the court with prowess and demonstrated court vision and an outside shooting touch that were seldom found in players of his height."),
    
    Player(id: 3, numero: "8", name: "Dickey Simpkins", imageName: "Dickey Simpkins", imageCard: "Dickey Simpkins-Card", seasons: "7", rings: "3", assists: "3", biography: "LuBara Dixon, Simpkins (born April 6, 1972) is an American former professional basketball player best known for his tenure with the Chicago Bulls in the late 1990s. He is currently a scout for the Washington Wizards. The Warriors subsequently waived Simpkins, and the Bulls claimed him. Simpkins posted a .634 field goal percentage in 21 games, and in the spring of 1998 he participated in the playoffs for the first time of his career, earning his third championship ring."),
    
    Player(id: 4, numero: "9", name: "Ron Harper", imageName: "Ron Harper", imageCard: "Ron Harper-Card", seasons: "14", rings: "2", assists: "2", biography: "Ronald Harper Sr. (born January 20, 1964) is an American former professional basketball player. He played for four teams in the National Basketball Association (NBA) between 1986 and 2001 and is a five-time NBA champion. In high school, he first attended Belmont High School in Dayton,[4] but was cut from the freshman team and didn't play as a sophomore. He later transferred to Kiser High School in Dayton and as a senior averaged 20.5 points, 13.4 rebounds, five assists, five steals and six blocked shots and was named first-team All-Ohio."),
    
    Player(id: 5, numero: "13", name: "Luc Longley", imageName: "Luc Longley", imageCard: "Luc Longley-Card", seasons: "3", rings: "3", assists: "2", biography: "Lucien James Longley AM (born 19 January 1969) is an Australian professional basketball coach and former player. He was the first Australian to play in the National Basketball Association (NBA). Longley began his career in Australia with a brief stint playing for the Perth Wildcats of the National Basketball League (NBL) in 1986. He played collegiately for the New Mexico Lobos and was drafted 7th overall by the Minnesota Timberwolves in the 1991 NBA draft."),
    
    Player(id: 6, numero: "22", name: "Keith Booth", imageName: "Keith Booth", imageCard: "Keith Booth-Card", seasons: "2", rings: "3", assists: "2", biography: "Keith Eugene Booth (born October 9, 1974) is an American basketball coach and former National Basketball Association (NBA) player. Booth played college basketball at the University of Maryland from 1993 to 1997. Booth was born and raised in Baltimore and attended Paul Laurence Dunbar High School. While playing for Dunbar in 1992, the team won the high school basketball national championship and Booth was named a 1993 McDonald's All-American."),
    
    Player(id: 7, numero: "23", name: "Michael Jordan", imageName: "Michael Jordan", imageCard: "Michael Jordan-Card", seasons: "13", rings: "6", assists: "4", biography: "Michael Jeffrey Jordan (born February 17, 1963), also known by his initials MJ,[9] is an American businessman and former professional basketball player. He played 15 seasons in the NBA, winning six championships with the Chicago Bulls. His biography on the official NBA website states: By acclamation, Michael Jordan is the greatest basketball player of all time. He was integral in helping to popularize the NBA around the world in the 1980s and 1990s,[10] becoming a global cultural icon in the process."),
    
    Player(id: 8, numero: "4", name: "Scott Burrell", imageName: "Scott Burrell", imageCard: "Scott Burrell-Card", seasons: "6", rings: "2", assists: "4", biography: "Scott David Burrell (born January 12, 1971) is an American basketball coach and former player who is currently the men's basketball head coach at Southern Connecticut State University. In 1990, Burrell was drafted by the Toronto Blue Jays of MLB. He played in Minor League Baseball during the 1990 and 1991 seasons. After ending his baseball career, he was drafted in 1993 by the Charlotte Hornets of the NBA. He was later traded to the Golden State Warriors and then the Chicago Bulls."),
    
    Player(id: 9, numero: "33", name: "Scottie Pippen", imageName: "Scottie Pippen", imageCard: "Scottie Pippen-Card", seasons: "6", rings: "2", assists: "5", biography: "Scotty Maurice Pippen Sr.(born September 25, 1965), usually spelled Scottie Pippen, is an American former professional basketball player. He played 17 seasons in the National Basketball Association (NBA), winning six NBA championships with the Chicago Bulls. Considered one of the greatest small forwards of all time, Pippen was named to the NBA All-Defensive First Team eight consecutive times and the All-NBA First Team three times. He was a seven-time NBA All-Star and was the NBA All-Star Game MVP in 1994. He was named one of the 50 Greatest Players in NBA History during the 1996–97 season"),
    
    Player(id: 10, numero: "91", name: "Dennis Rodman", imageName: "Dennis Rodman", imageCard: "Dennis Rodman-Card", seasons: "14", rings: "2", assists: "2", biography: "Dennis Keith Rodman (born May 13, 1961) is an American former professional basketball player. Nicknamed the Worm, he is known for his fierce defensive and rebounding abilities. Rodman played for the Detroit Pistons, San Antonio Spurs, Chicago Bulls. Rodman played at the small forward position in his early years before becoming a power forward. He earned NBA All-Defensive First Team honors seven times and won the NBA Defensive Player of the Year Award twice. He also led the NBA in rebounds per game for a record seven consecutive years and won five NBA championships.")
]

