//
//  Burger.swift
//  burgerClassMiniApp
//
//  Created by Avnish Khandeshi on 10/26/21.
//

import Foundation

enum BurgerType {
    case impossible, inNout, fiveGuys, steak
}

enum Cooking {
    case raw, regular, burnt
}

enum Toppings {
    case ketchup, mustard, mayonnaise, pickles, jalapenos, onions
}




public class Burger {
    
    static var orders = 0
    
    static var allOrders : [Burger] = []
    
    
    let burgerCost:[Double] = [4.99, 3.79, 6.39, 3.29]
    let toppingsCost:[Double] = [0.69, 0.59, 0.89, 0.79, 0.59, 0.99]
    static var ratingsForEachBurger:[Double] = [0,0,0,0]
    
    
    var order : Int
    let type: BurgerType;
    let time : Cooking;
    let amount : Int
    let price : Double
    let toppings : [Toppings]
    
    
    init(enteredType : BurgerType, enteredTime: Cooking, enteredAmount : Int, enteredToppings : [Toppings]) {
        amount = enteredAmount
        type = enteredType
        time = enteredTime
        Burger.orders += 1
        order = Burger.orders
        toppings = enteredToppings
        
        var toppingsCostPerBurger : Double = 0
        
        for topping in toppings {
            switch topping {
            case Toppings.ketchup:
                toppingsCostPerBurger += Double(toppingsCost[0])
            case Toppings.mustard:
                toppingsCostPerBurger += Double(toppingsCost[1])
            case Toppings.mayonnaise:
                toppingsCostPerBurger += Double(toppingsCost[2])
            case Toppings.pickles:
                toppingsCostPerBurger += Double(toppingsCost[3])
            case Toppings.jalapenos:
                toppingsCostPerBurger += Double(toppingsCost[4])
            case Toppings.onions:
                toppingsCostPerBurger += Double(toppingsCost[5])
            }
        }
        
        if (type == BurgerType.impossible){
            price = (4.99 + toppingsCostPerBurger) * Double(amount)
        }
        else if type == BurgerType.inNout {
            price = (3.79+toppingsCostPerBurger)*Double(amount)
        }
        else if (type == BurgerType.fiveGuys) {
            price = (6.39+toppingsCostPerBurger) * Double(amount)
        }
        else if type == BurgerType.steak {
            price = (3.29+toppingsCostPerBurger) * Double(amount)
        }
        else {
            price = 100
        }
        
        // Get toppings that user chose
    }
    

    
    
}



