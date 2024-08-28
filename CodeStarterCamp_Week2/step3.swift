//
//  step3.swift
//  CodeStarterCamp_Week2
//
//  Created by 구현 on 8/25/24.
//

import Foundation

var lottoRoundDictionary: [Int: [Int]] = [:]

func recordLottoRounds(_ lottoNumbers: Set<Int>) {
    let currentRound: Int = getCurrentRound()
    lottoRoundDictionary[currentRound] = Array(lottoNumbers).sorted(by: <)
}

func getCurrentRound() -> Int {
    lottoRoundDictionary.keys.count + 1
}

func printLottoNumbers(round: Int) {
    guard let lottoNumbers: [Int] = lottoRoundDictionary[round] else {
        print("\(round)회차의 로또 당첨 번호를 찾을 수 없습니다.")
        return
    }

    let numbersJoined: String = lottoNumbers.map{ String($0) }.joined(separator: ", ")
    print("\(round)회차의 로또 당첨 번호는 \(numbersJoined) 입니다.")
}