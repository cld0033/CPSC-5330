import UIKit

typealias BaseballPlayer = (name: String, homeruns: Int)

let players: [BaseballPlayer] = [
    ("Barry Bonds", 73),
      ("Mark McGwire", 70),
      ("Sammy Sosa", 66),
      ("Mark McGwire", 65),
      ("Sammy Sosa", 64),
      ("Sammy Sosa", 63),
      ("Aaron Judge", 62),
      ("Roger Maris", 61),
      ("Babe Ruth", 60),
      ("Babe Ruth", 59),
      ("Giancarlo Stanton", 59),
      ("Jimmie Foxx", 58),
      ("Hank Greenberg", 58),
      ("Ryan Howard", 58),
      ("Mark McGwire", 58),
      ("Luis Gonzalez", 57),
      ("Alex Rodriguez", 57),
      ("Ken Griffey Jr.", 56),
      ("Ken Griffey Jr.", 56),
      ("Hack Wilson", 56),
      ("Aaron Judge", 58),
      ("Mickey Mantle", 54),
      ("José Bautista", 54),
      ("Chris Davis", 53),
      ("David Ortiz", 54),
      ("Alex Rodriguez", 54),
      ("Mickey Mantle", 52),
      ("Carlos Delgado", 53),
      ("Jim Thome", 52),
      ("Miguel Cabrera", 51),
      ("Mark Teixeira", 43),
      ("Aaron Hill", 45),
      ("Chris Carter", 41),
      ("Nelson Cruz", 40),
      ("Pete Alonso", 53),
      ("Cody Bellinger", 47),
      ("Joey Gallo", 41),
      ("Bryce Harper", 42),
      ("Todd Frazier", 39),
      ("Edwin Encarnación", 42),
      ("Nolan Arenado", 41),
      ("Fred McGriff", 35),
      ("Carlos Pena", 46),
      ("Justin Upton", 31),
      ("Anthony Rizzo", 32),
      ("Ronald Acuña Jr.", 41)
]


func homeRunStats(_ players: [BaseballPlayer]) -> (max: BaseballPlayer, min: BaseballPlayer, average: Double) {
    let maxLeader = players.max { a, b in a.homeruns < b.homeruns }!
    let minLeader = players.min { a, b in a.homeruns < b.homeruns }!S
    
    var total = 0
    for player in players {
        total += player.homeruns
    }
    
    let average = Double(total) / Double(players.count)
    return (maxLeader, minLeader, average)
}

func filteredPowerHitters(_ players: [BaseballPlayer], minHomeRuns: Int) -> [BaseballPlayer] {
    return players.filter { $0.homeruns > minHomeRuns }
        .sorted { $0.homeruns > $1.homeruns }
}

var filteredPlayers = filteredPowerHitters(players, minHomeRuns: 60)

for player in filteredPlayers {
    print("\(player.name) - \(player.homeruns) HR")
}

print(homeRunStats(players))

