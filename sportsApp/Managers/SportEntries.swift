//
//  SportEntries.swift
//  sportsApp
//
//  Created by Alvina Chow on 1/22/24.
//

import Foundation
import SwiftUI


let one_rugby = Sport(title: "Rugby", image: Image("Rugby"), year: "1500s", loc: "England",
    desc: "Rugby, a dynamic collision of skill, strategy, and camaraderie, has evolved into a globally cherished team sport. Played with an oval-shaped ball, the game features two teams of 15 players each, determined to score points by crossing the opponent's goal line or kicking the ball through the uprights.\n\nAt its core, rugby demands a unique blend of physicality and finesse. The primary objective is to score tries, achieved by carrying the ball across the opponent's goal line, and conversions or kicks for additional points. The game unfolds through phases of play, including scrums, lineouts, and rucks, where players vie for possession and strategic advantage.\n\nPlayers pass, kick, and run with the ball, relying on teamwork and individual skill. In rugby union, the scrum and lineout are distinctive set pieces, while rugby league emphasizes a faster pace with a six-tackle possession format. Both versions share a commitment to sportsmanship and mutual respect.\n\nWhether in the grassroots of local matches or the grandeur of international competitions like the Rugby World Cup, rugby's universal appeal lies in its ability to unite players and fans alike through the exhilarating spectacle of this physically demanding yet beautifully strategic sport.")

let two_football = Sport(title: "Football", image: Image("Football"), year: "1800s", loc: "United States", 
    desc: "American football, a thrilling fusion of strategy, athleticism, and spectacle, is an integral part of the U.S. sporting landscape. Emerging from rugby and soccer influences, this uniquely American sport pits two teams of 11 players against each other, aiming to advance an oblong ball across the opponent's goal line or kick it through the goalposts.\n\nThe game involves a series of downs, each team getting four attempts to advance the ball ten yards. Through strategic plays like passes, runs, and kicks, teams aim for touchdowns or field goals, accumulating points. Defensively, players employ tackles and interceptions to thwart the opposing team's progress.\n\nCharacterized by dynamic plays, strategic huddles, and intense tackles, American football combines physical prowess with strategic complexity. The National Football League (NFL), with its iconic Super Bowl and fierce rivalries, holds a central role in this cultural phenomenon.")

let three_cricket = Sport(title: "Cricket", image: Image("Cricket"), year: "1800s", loc: "England", 
    desc: "Cricket is a captivating sport that originated in 16th-century England and has since become a global phenomenon. Played between two teams, each consisting of eleven players, cricket unfolds on an oval-shaped field with a 22-yard-long pitch at its center.\n\nThe primary objective in cricket is for the batting team to score runs, achieved by striking the ball with a bat and running between wickets. The opposing team, fielding and bowling, aims to dismiss the batsmen and restrict the runs scored. A cricket match comprises innings, with each team having a turn to bat and bowl.\n\nBowlers deliver the ball to batsmen, who attempt to score runs by hitting it into the field. The intricate strategies involve a variety of bowling techniques and batting styles. The batsmen aim to protect their wickets while strategically accumulating runs.\n\nCricket offers diverse formats, including Test matches, One Day Internationals (ODIs), and Twenty20 (T20) games, each with its unique rules and durations. The sport's timeless traditions and dynamic gameplay make cricket a source of passion for players and fans worldwide, fostering a global community that cherishes the skill, strategy, and timeless beauty of this iconic game.")

let four_wrestling = Sport(title: "Wrestling", image: Image("Wrestling"), year: "3000 BC", loc: "Ancient Greece", desc: "Wrestling, an ancient and enduring sport, epitomizes the primal struggle between opponents in a controlled arena. Rooted in both historical and modern contexts, wrestling showcases physical prowess, technique, and mental fortitude. The objective is straightforward: to pin an opponent's shoulders to the mat or accumulate points through various holds and maneuvers.\n\nContested across weight classes, wrestling ensures equitable matchups. Matches unfold in rounds, with competitors aiming for dominance through takedowns, escapes, and reversals. Points are awarded for successful moves and defensive maneuvers, with the ultimate goal of a pin or accumulating the highest score.\n\nThe heart of wrestling lies in the intensity of one-on-one combat, where athletes grapple for control and leverage. Techniques involve a combination of throws, holds, and mat wrestling, demanding a blend of strength, agility, and strategic thinking. Collegiate, freestyle, and Greco-Roman wrestling are prominent variations, each with distinct rules governing permissible moves.\n\nWrestling's global appeal is evident in its inclusion in the Olympic Games and its enduring popularity across cultures. Beyond the physicality, wrestling fosters discipline, resilience, and sportsmanship, making it not just a sport but a profound test of an athlete's character and skill.")

let five_hockey = Sport(title: "Ice Hockey", image: Image("Hockey"), year: "1800s", loc: "Canada", 
    desc: "Ice hockey, a lightning-fast collision of skill and speed, is a high-energy game played on an ice rink between two teams of six skaters each, including a goaltender. The objective is to propel a rubber puck into the opponent's goal using hockey sticks, while defending their own net from incoming shots.\n\nIce hockey is renowned for its dynamic pace, fluid teamwork, and strategic play. The rink is divided into zones, and players navigate the icy surface with speed and agility, engaging in fierce battles for puck possession. Goals are scored when the puck crosses the goal line, and the team with the most goals at the end of the game emerges victorious.\n\nThe sport is characterized by power plays, penalty kills, and fast line changes, adding layers of excitement to its unpredictable nature. Goaltenders play a crucial role, showcasing reflexes and acrobatic saves to deny the opposing team's scoring attempts. With its thrilling combination of skill, strategy, and physicality, ice hockey captivates audiences worldwide, creating an electrifying spectacle on the frozen stage.")

let six_boxing = Sport(title: "Boxing", image: Image("Boxing"), year: "3000 BC", loc: "Ancient Egypt", 
    desc: "Boxing is a riveting combat sport that traces its roots back centuries. A one-on-one contest of skill, speed, and strategy, boxing involves two fighters facing off in a roped square ring, each aiming to outmaneuver and out-punch their opponent. The objective is clear: score points by landing clean, effective blows on the opponent's upper body and head or achieve a knockout by rendering the opponent unable to continue.\n\nBoxers wear padded gloves and adhere to a set of rules that govern permissible punches, defensive techniques, and the overall conduct of the match. Bouts are typically divided into rounds, and judges score the fighters based on the quality and quantity of their punches, as well as their defensive prowess.\n\nCentral to the sport are the stances, footwork, and various punches, such as jabs, hooks, and uppercuts, which boxers use to both attack and defend. Boxing demands not only physical conditioning but also mental acuity to anticipate and counter an opponent's moves. With its mix of athleticism, strategy, and raw intensity, boxing stands as a timeless and globally celebrated sport that showcases the sheer artistry and courage of its participants.")

let seven_racing = Sport(title: "Auto Racing", image: Image("Racing"), year: "1800s", loc: "France", 
    desc: "Auto racing, a thrilling blend of speed, skill, and engineering prowess, stands as a dynamic and globally beloved sport. Whether on oval tracks, road courses, or in the challenging terrain of rally racing, the essence remains the same: drivers pushing the limits of man and machine to secure victory. The sport features a variety of vehicles, from sleek open-wheel machines to powerful stock cars, each designed for specific racing disciplines.\n\nIn auto racing, drivers compete against each other in a quest to complete a set number of laps in the shortest possible time. The diverse formats include Formula 1, NASCAR, IndyCar, and rallying, each with its unique set of rules and challenges. Races unfold with strategic pit stops, tire changes, and maneuvers to overtake opponents.\n\nDrivers must master the art of handling high-speed turns, precise braking, and strategic drafting to gain a competitive edge. The role of the team, including engineers and pit crews, is crucial for success. Victory is not only determined by the driver's speed but also by the team's ability to optimize the car's performance throughout the race.\n\nAuto racing, with its intoxicating blend of adrenaline and precision, captivates millions of fans worldwide. It remains a symbol of innovation, skill, and the pursuit of ultimate speed.")

let eight_mma = Sport(title: "Mixed Martial Arts", image: Image("MMA"), year: "650 BC", loc: "Ancient Greece", 
    desc: "Mixed Martial Arts (MMA), a dynamic and exhilarating combat sport, has surged in popularity as a true test of versatility and skill. Born from the desire to find the most effective martial art in unarmed combat, MMA combines elements of various disciplines, including striking and grappling. Fighters engage in a full-contact competition within an octagonal cage, seeking victory through a range of techniques.\n\nIn MMA, competitors utilize a blend of striking arts like boxing, Muay Thai, and kickboxing, along with grappling arts such as Brazilian Jiu-Jitsu and wrestling. The goal is to either secure a knockout, submission, or win by judges' decision. The sport demands proficiency in both standing and ground-based combat, making it a holistic test of a fighter's abilities.\n\nMatches are divided into rounds, with fighters aiming to outscore or finish their opponent within the allotted time. Fighters must adhere to rules governing strikes, submissions, and conduct, ensuring a balance between safety and the raw intensity of the competition.\n\nMMA's rise to prominence is marked by its global appeal and the emergence of organizations like the Ultimate Fighting Championship (UFC). As a captivating fusion of diverse martial arts, MMA showcases the evolution of combat sports, providing fans with high-impact, unpredictable, and physically demanding spectacles.")

let nine_weightlifting = Sport(title: "Weightlifting", image: Image("Weightlifting"), year: "5th Century BC", loc: "Ancient Europe",
    desc: "Weightlifting is a dynamic and challenging sport that demands both strength and precision. Rooted in ancient traditions, weightlifting has evolved into a modern Olympic discipline known for its explosive power and technical prowess. The sport involves two lifts: the snatch and the clean and jerk. In the snatch, athletes lift the barbell from the ground to overhead in one swift motion, requiring speed, agility, and strength. The clean and jerk consists of two distinct movements – lifting the barbell to the shoulders (clean) and then jerking it overhead.\n\nCompetitors are classified based on body weight, and the athlete who lifts the highest total weight in each category emerges victorious. Weightlifting not only showcases raw physical strength but also demands mental focus and precision, as lifters must execute flawless techniques under immense pressure.\n\nApart from its role in international competitions, weightlifting is a fundamental component of strength training for athletes in various sports. The benefits extend beyond muscle development, as weightlifting enhances bone density, joint health, and overall functional fitness. With its combination of strength, skill, and sheer determination, weightlifting stands as a testament to the relentless pursuit of excellence in the realm of physical prowess.")

let ten_cycling = Sport(title: "Cycling", image: Image("Cycling"), year: "1800s", loc: "France",
   desc: "Cycling, a sport of speed, endurance, and strategy, has captured the hearts of enthusiasts worldwide. Rooted in the simplicity of human-powered transportation, cycling has evolved into a dynamic and diverse discipline encompassing various formats. Road cycling, characterized by sleek bikes and challenging terrains, showcases the endurance of athletes who navigate diverse landscapes in races like the Tour de France.\n\nMountain biking, on the other hand, takes riders off paved roads, challenging them with rugged trails and obstacles amidst nature's beauty. Track cycling unfolds on velodromes, emphasizing explosive power and precision in events like the individual pursuit and sprint.\n\nCycling's competitive pinnacle is the Olympic Games, featuring both road and track events that captivate global audiences. Beyond the realm of competition, cycling promotes a healthy lifestyle, environmental sustainability, and community engagement. Commuters, recreational riders, and professional athletes all share a passion for the rhythmic pedal strokes that propel them forward.\n\nThe sport's allure lies not only in its physical demands but also in the camaraderie it fosters among participants. From the thrilling sprints to the grueling mountain ascents, cycling is a celebration of human strength, resilience, and the simple joy of two wheels in motion.")

let eleven_lacrosse = Sport(title: "Lacrosse", image: Image("Lacrosse"), year: "12th Century", loc: "North America",
    desc: "Lacrosse, a fast-paced and exhilarating sport, traces its origins to indigenous communities in North America. Characterized by its swift, dynamic nature, lacrosse combines elements of soccer, basketball, and hockey, played with a small rubber ball and long-handled stick known as a crosse. The game, often referred to as \"the fastest sport on two feet,\" involves two teams aiming to score goals by propelling the ball into the opponent's net.\n\nSplit into men's and women's variations, both versions share the essence of agility, teamwork, and skill. Men's lacrosse is known for its physical intensity, with players wearing protective gear, while women's lacrosse emphasizes finesse and agility. The sport demands exceptional hand-eye coordination, speed, and strategic thinking.\n\nLacrosse has experienced a surge in popularity globally, with youth and collegiate leagues flourishing. Major League Lacrosse (MLL) and the Premier Lacrosse League (PLL) have propelled the sport's professional scene. The game's rich indigenous heritage adds cultural significance to its growth.\n\nAs lacrosse continues to captivate players and fans alike, its blend of athleticism, camaraderie, and tradition solidifies its status as a thrilling and inclusive sport, embracing participants from various backgrounds and ages.")

let twelve_ultimate = Sport(title: "Ultimate", image: Image("Ultimate"), year: "1968", loc: "United States",
    desc: "Ultimate Frisbee, a dynamic and non-contact team sport, transcends the boundaries of traditional sports with its spirit of sportsmanship and emphasis on fair play. Played with a flying disc, the game combines elements of soccer, basketball, and football. Two teams strive to score points by passing the disc among players and ultimately catching it in the opposing team's end zone.\n\nWhat sets Ultimate Frisbee apart is its unique ethos. The sport operates on the principle of the \"Spirit of the Game,\" emphasizing self-officiating and fair play. Players are responsible for their own conduct, fostering a culture of respect and integrity on the field.\n\nWith its fast-paced, continuous action and emphasis on inclusive participation, Ultimate Frisbee has gained popularity globally, from casual pick-up games in parks to competitive leagues and international tournaments. The sport's versatility allows people of all ages and skill levels to engage, making it a favorite in schools, universities, and community settings.\n\nAs a testament to its global appeal, Ultimate Frisbee has gained recognition from international sports organizations and continues to thrive as a sport that celebrates athleticism, teamwork, and the sheer joy of play.")

let thirteen_bowling = Sport(title: "Bowling", image: Image("Bowling"), year: "5000 BC", loc: "Ancient Egypt",
     desc: "Professional bowling, a dynamic and strategic sport, reaches its pinnacle on the lanes of the PBA (Professional Bowlers Association) and the PWBA (Professional Women's Bowling Association). The PBA, established in 1958, and the revitalized PWBA, reestablished in 2015, showcase the finest male and female bowlers globally, respectively.\n\nIn the world of professional bowling, athletes display remarkable precision, adaptability to diverse lane conditions, and an uncanny ability to knock down pins with consistency. The PBA Tour, featuring top male bowlers, is a testament to the skill and athleticism required to excel in this competitive arena. From the electrifying strikes to the strategic spare conversions, PBA events captivate audiences with every roll of the ball.\n\nOn the parallel track, the PWBA Tour has revitalized women's professional bowling, providing a platform for talented female athletes to shine. With a calendar of challenging tournaments, the PWBA highlights the incredible diversity of styles, techniques, and achievements within women's bowling. The camaraderie among PWBA bowlers fosters a supportive community, further enhancing the significance of this professional circuit.\n\nBoth the PBA and PWBA culminate in prestigious championships, where the pursuit of strikes, spares, and titles reaches its zenith. These professional bowling associations not only celebrate individual accomplishments but also contribute to the broader narrative of bowling as an exciting and inclusive sport for all.")

let fourteen_fencing = Sport(title: "Fencing", image: Image("Fencing"), year: "18th Century", loc: "Italy",
     desc: "Fencing, a sport that blends athleticism, strategy, and grace, traces its origins to centuries-old dueling traditions and has evolved into a modern Olympic discipline. This exhilarating contest of swordplay engages competitors in a tactical dance, requiring speed, precision, and mental acuity. Fencers, armed with foils, epees, or sabres, engage in dynamic duels with the objective of scoring points through strategic touches on their opponent.\n\nThe sport is characterized by its emphasis on technique and the execution of precise movements, demanding not only physical prowess but also quick thinking and adaptability. Fencing competitions are a symphony of lightning-fast lunges, parries, and ripostes, where split-second decisions can determine victory.\n\nFencing is divided into three primary disciplines: foil, emphasizing precision and targeting the torso; epee, where the entire body is a valid target; and sabre, characterized by quick, slashing movements with the upper body as the scoring area. The sport fosters discipline, sportsmanship, and respect, with a unique blend of tradition and innovation.\n\nAs fencers engage in strategic battles on the piste, the sport showcases an elegant choreography of skill and finesse. Beyond the competitive arena, fencing is a pursuit that cultivates mental agility and a deep appreciation for the artistry of combat, making it a captivating and timeless athletic endeavor.")

let fifteen_curling = Sport(title: "Curling", image: Image("Curling"), year: "16th Century", loc: "Scotland",
        desc: "Curling, often referred to as \"chess on ice,\" is a captivating winter sport that combines precision, strategy, and teamwork. Played on a rectangular sheet of ice, teams of four slide heavy granite stones towards a circular target known as the house. The objective is to place the stones as close as possible to the center, known as the button, while strategically maneuvering others to block opponents.\n\nCurling demands not only strength and accuracy but also a deep understanding of the ice conditions. Players use brooms to sweep the ice in front of the sliding stone, influencing its speed and direction. The mesmerizing sight of a stone gracefully curling along its path adds to the sport's allure.\n\nTeams, adorned in distinctive uniforms, engage in an intriguing battle of tactics, trying to outmaneuver their opponents over multiple ends (similar to innings in baseball). The sport is renowned for its sportsmanship, with players often acknowledging opponents' skillful shots.\n\nCurling has gained global popularity, becoming a highlight of the Winter Olympics. Beyond its competitive aspect, the camaraderie and social nature of curling contribute to its enduring appeal. With its unique blend of precision, strategy, and camaraderie, curling continues to carve its place as one of the most beloved and distinctive winter sports.")
