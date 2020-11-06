//
//  ResultHelper.swift
//  QuizAppTests
//
//  Created by MyMacBook on 25.10.2020.
//  Copyright © 2020 MyMacBook. All rights reserved.
//

@testable import QuizEngine

extension Result {
  static func make(answers: [Question: Answer] = [:], score: Int = 0) -> Result<Question, Answer> {
    
    return Result(answers: answers, score: score)
  }
}

  extension Result: Equatable where Answer: Equatable {
      public static func ==(lhs: Result<Question, Answer>, rhs: Result<Question, Answer>) -> Bool {
        return lhs.score == rhs.score && lhs.answers == rhs.answers
      }
  }

extension Result: Hashable where Answer: Equatable {
    public var hashValue: Int {
        return 1
    }
}
