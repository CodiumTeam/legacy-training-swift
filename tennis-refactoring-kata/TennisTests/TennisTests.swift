import SwiftParamTest
import XCTest

class Tests: XCTestCase {
    func runTennisGame(player1Score: Int, player2Score: Int) -> String {
        print("\(player1Score), \(player2Score)")
        let game = TennisGame2.init(player1: "player1", player2: "player2")
        let highestScore = max(player1Score, player2Score);
        for i in 0..<highestScore {
            if i < player1Score {
                game.wonPoint("player1")
            }
            if i < player2Score {
                game.wonPoint("player2")
            }
        }

        return game.score!
    }

    func testTennisGame() {
        assert(to: self.runTennisGame, expect: [
            args(0, 0, expect: "Love-All"),
            args(1, 1, expect: "Fifteen-All"),
            args(2, 2, expect: "Thirty-All"),
            args(3, 3, expect: "Deuce"),
            args(4, 4, expect: "Deuce"),
            
            args(1, 0, expect:"Fifteen-Love"),
            args(0, 1, expect:"Love-Fifteen"),
            args(2, 0, expect:"Thirty-Love"),
            args(0, 2, expect:"Love-Thirty"),
            args(3, 0, expect:"Forty-Love"),
            args(0, 3, expect:"Love-Forty"),
            args(4, 0, expect:"Win for player1"),
            args(0, 4, expect:"Win for player2"),
            
            args(2, 1, expect: "Thirty-Fifteen"),
            args(1, 2, expect: "Fifteen-Thirty"),
            args(3, 1, expect: "Forty-Fifteen"),
            args(1, 3, expect: "Fifteen-Forty"),
            args(4, 1, expect: "Win for player1"),
            args(1, 4, expect: "Win for player2"),
            
            args(3, 2, expect: "Forty-Thirty"),
            args(2, 3, expect: "Thirty-Forty"),
            args(4, 2, expect: "Win for player1"),
            args(2, 4, expect: "Win for player2"),
            
            args(4, 3, expect: "Advantage player1"),
            args(3, 4, expect: "Advantage player2"),
            args(5, 4, expect: "Advantage player1"),
            args(4, 5, expect: "Advantage player2"),
            args(15, 14, expect: "Advantage player1"),
            args(14, 15, expect: "Advantage player2"),
            
            args(6, 4, expect: "Win for player1"),
            args(4, 6, expect: "Win for player2"),
            args(16, 14, expect: "Win for player1"),
            args(14, 16, expect: "Win for player2"),
        ])
    }
}
