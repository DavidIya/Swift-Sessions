// Playground - noun: a place where people can play

import UIKit

func funkA() {
    print("Calling funkB.")
    funkB()
}

func funkB() {
    print("Calling funkC!")
    funkC()
}

func funkC() {
    print("I am the best function of all!")
  
}

funkA()

var bankAccount = 500.50
var itemAmount = 400.00

func makePurchase() {
    if bankAccount >= itemAmount {
    bankAccount = bankAccount - itemAmount
    }
}

makePurchase()

//Functions should be self contained and able to stand alone.
//------------------------
func attemptPurchase(amount: Double) {
    if bankAccount >= amount {
        bankAccount -= amount
    } else {
        print ("Insufficient funds!")
    }
}


attemptPurchase(itemAmount)

//func attemptPurchase( var amount: Double) {
   // amount = 5.0
    //print(itemAmount)
    
//}

attemptPurchase(itemAmount)
/////TIME FOR SOME BETTER CODE------------------------


func canPurchase(amount: Double) -> Bool {
    if bankAccount >= amount {
        return true
    }
        return false
}

func processPurchase(amt: Double) {
    bankAccount -= amt
    print("You made a purchase of the amount \(amt)")
}


if canPurchase(itemAmount) {
    processPurchase(itemAmount)
} else {
    print("Insufficient funds.")
}

var whatIsInThis = canPurchase(itemAmount)
//When you assign variable to a function you're checking the return value of it.

var name = "sweeny todd"

func getUpperVersion(inputStr:String) -> String {
    return inputStr.uppercaseString
}

var nameUpper = getUpperVersion(name)

func declareWinner(playerAScore: Int, playerBScore:Int) {
    if playerAScore > playerBScore {
        print("Player A wins!!!")
    } else if playerBScore > playerAScore{
        print("Player B wins!!!")
} else print ("It's a tie!")
}

declareWinner(50, 60)