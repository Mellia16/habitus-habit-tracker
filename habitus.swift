import Foundation

let habits = [
    "Read for 30 minutes 📖",
    "Code for 1 hour 💻",
    "Watch something inspirational 🎥",
    "Pray on time 🙏",
    "Exercise for 30 minutes 🏃"
]

var status = [Bool]() // buat nyimpen jawaban
print("Swift Habit Tracker - \(DateFormatter.localizedString(from: Date(), dateStyle: .medium, timeStyle: .none))")
print("----------------------------------------------------")

// Tanya user
for habit in habits {
    print("Did you finish '\(habit)' today? (yes/no)")
    if let answer = readLine(), answer.lowercased() == "yes" {
        status.append(true)
    } else {
        status.append(false)
    }
}

// Print hasil
var completed = 0
print("\nYour Habit Summary:")
for i in 0..<habits.count {
    if status[i] {
        print("\(i+1). \(habits[i]) ✅")
        completed += 1
    } else {
        print("\(i+1). \(habits[i]) ❌")
    }
}

// Hitung progress
print("\nProgress: \(completed)/\(habits.count) habits completed")
let progressBar = String(repeating: "#", count: completed) + String(repeating: "-", count: habits.count - completed)
print("[\(progressBar)]")

if completed == habits.count {
    print("Awesome! All habits done 🎉")
} else {
    print("Keep going, you can do it! 💪")
}
