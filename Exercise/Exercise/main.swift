//
//  main.swift
//  Exercise
//
//  Created by Eduarda Pinheiro on 05/10/22.
//

import Foundation

//Regimen program

//Exercise Structure
struct Exercise {
    var name: String
    var muscleGroups = [String]()
    var reps: Int
    var sets: Int
    var totalReps: Int
    
    init(name: String, muscleGroups: [String], reps: Int, sets: Int) {
        self.name = name
        self.muscleGroups = muscleGroups
        self.reps = reps
        self.sets = sets
        self.totalReps = reps * sets
    }
}

//Instances of Exercise
var pushUp = Exercise(name: "Push up", muscleGroups: ["Triceps", "Chest", "Shoulders"], reps: 10, sets: 3)
var sitUp = Exercise(name: "Sit up", muscleGroups: ["Abdominal"], reps: 10, sets: 3)

//Regimen Structure
struct Regimen {
    var dayOfweek: String
    var exercise: [Exercise]
    
    init(dayOfWeek: String, exercise: [Exercise]) {
        self.dayOfweek = dayOfWeek
        self.exercise = exercise
    }
    
    func printExercisePlan() {
        print("Today is \(self.dayOfweek) and the plan is to: ")
        
        for exercise in self.exercise {
            print("Do \(exercise.sets) sets of \(exercise.reps) \(exercise.name)s")
            print("That's a total of \(exercise.totalReps) \(exercise.name)")
        }
    }
}

var mondayRegimen = Regimen(dayOfWeek: "Monday", exercise: [sitUp])
mondayRegimen.printExercisePlan()
