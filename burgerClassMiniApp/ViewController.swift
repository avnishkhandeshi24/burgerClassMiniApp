//
//  ViewController.swift
//  burgerClassMiniApp
//
//  Created by Avnish Khandeshi on 10/26/21.
//

import UIKit



class ViewController: UIViewController {
    
    
    var burgerChosen : Bool = false
    
    var selectedToppings : [Bool] = [false, false, false, false, false, false]
    var price : Double = 0.0
    
    
    
    @IBOutlet weak var firstBurgerStackView: UIStackView!
    
    @IBOutlet weak var secondBurgerStackView: UIStackView!
    
    @IBOutlet weak var thirdBurgerStackView: UIStackView!
    
    @IBOutlet weak var fourthBurgerStackView: UIStackView!
    
    
    
    @IBOutlet weak var firstToppingStackView: UIStackView!
    
    @IBOutlet weak var secondToppingStackView: UIStackView!
    
    @IBOutlet weak var thirdToppingStackView: UIStackView!
    
    @IBOutlet weak var fourthToppingStackView: UIStackView!
    
    @IBOutlet weak var fifthToppingStackView: UIStackView!
    
    @IBOutlet weak var sixthToppingStackView: UIStackView!
    
    
    @IBOutlet weak var cookingTimeSegmentIndex: UISegmentedControl!
    
    @IBOutlet weak var amountOfBurgersTextField: UITextField!
    
    
    
    @IBOutlet weak var submitButton: UIButton!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        cookingTimeSegmentIndex.selectedSegmentIndex = 4
        
        submitButton.layer.borderWidth = 5
        submitButton.layer.cornerRadius = 10
        submitButton.setTitleColor(UIColor(red: 0.5608, green: 0.749, blue: 0.9176, alpha: 1), for: UIControl.State.normal)
        submitButton.layer.borderColor = UIColor(red: 0.5608, green: 0.749, blue: 0.9176, alpha: 1).cgColor
    }
    
    @IBAction func firstBurgerStackViewTapped(_ sender: UITapGestureRecognizer) {
        
        firstBurgerStackView.backgroundColor = UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)
        firstBurgerStackView.layer.cornerRadius = 12
        
        secondBurgerStackView.backgroundColor = UIColor.white
        thirdBurgerStackView.backgroundColor = UIColor.white
        fourthBurgerStackView.backgroundColor = UIColor.white
        
        burgerChosen = true
        checkSubmitButton()

    }
    
    @IBAction func secondBurgerStackViewTapped(_ sender: UITapGestureRecognizer) {
        secondBurgerStackView.backgroundColor = UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)
        secondBurgerStackView.layer.cornerRadius = 12
        
        firstBurgerStackView.backgroundColor = UIColor.white
        thirdBurgerStackView.backgroundColor = UIColor.white
        fourthBurgerStackView.backgroundColor = UIColor.white
        
        burgerChosen = true
        checkSubmitButton()
    }
    
    @IBAction func thirdBurgerStackViewTapped(_ sender: UITapGestureRecognizer) {
        thirdBurgerStackView.backgroundColor = UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)
        thirdBurgerStackView.layer.cornerRadius = 12
        
        firstBurgerStackView.backgroundColor = UIColor.white
        secondBurgerStackView.backgroundColor = UIColor.white
        fourthBurgerStackView.backgroundColor = UIColor.white
        
        burgerChosen = true
        checkSubmitButton()
    }
    
    @IBAction func fourthBurgerStackViewTapped(_ sender: UITapGestureRecognizer) {
        fourthBurgerStackView.backgroundColor = UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)
        fourthBurgerStackView.layer.cornerRadius = 12
        
        firstBurgerStackView.backgroundColor = UIColor.white
        thirdBurgerStackView.backgroundColor = UIColor.white
        secondBurgerStackView.backgroundColor = UIColor.white
        
        burgerChosen = true
        checkSubmitButton()
    }
    
    
    @IBAction func firstToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if firstToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            firstToppingStackView.backgroundColor = UIColor.white
            selectedToppings[0] = false
        }
        else {
        firstToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        firstToppingStackView.layer.cornerRadius = 12
            selectedToppings[0] = true
        }
        checkSubmitButton()
    }
    
    @IBAction func secondToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if secondToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            secondToppingStackView.backgroundColor = UIColor.white
            selectedToppings[1] = false
        }
        else {
        secondToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        secondToppingStackView.layer.cornerRadius = 12
            selectedToppings[1] = true
        }
        checkSubmitButton()
    }
    
    @IBAction func thirdToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if thirdToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            thirdToppingStackView.backgroundColor = UIColor.white
            selectedToppings[2] = false
        }
        else {
        thirdToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        thirdToppingStackView.layer.cornerRadius = 12
            selectedToppings[2] = true
        }
        checkSubmitButton()
    }
    
    @IBAction func fourthToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if fourthToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            fourthToppingStackView.backgroundColor = UIColor.white
            selectedToppings[3] = false
        }
        else {
        fourthToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        fourthToppingStackView.layer.cornerRadius = 12
            selectedToppings[3] = true
        }
        checkSubmitButton()
    }
    
    @IBAction func fifthToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if fifthToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            fifthToppingStackView.backgroundColor = UIColor.white
            selectedToppings[4] = false
        }
        else {
        fifthToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        fifthToppingStackView.layer.cornerRadius = 12
            selectedToppings[4] = true
        }
        checkSubmitButton()
    }
    
    @IBAction func sixthToppingStackViewTapped(_ sender: UITapGestureRecognizer) {
        if sixthToppingStackView.backgroundColor == UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1) {
            sixthToppingStackView.backgroundColor = UIColor.white
            selectedToppings[5] = false
        }
        else {
        sixthToppingStackView.backgroundColor = UIColor(red:0.6588, green: 0.9176, blue: 1, alpha: 1)
        sixthToppingStackView.layer.cornerRadius = 12
            selectedToppings[5] = true
        }
        checkSubmitButton()
            
    }

    @IBAction func amountOfBurgers(_ sender: UITextField) {
        if let numberInput = Int(amountOfBurgersTextField.text!) {
            if numberInput < 1 || numberInput > 100 {
                amountOfBurgersTextField.text = "1"
            }
        }
        else {
            amountOfBurgersTextField.text = "1"
        }
    }
    
    
    
    
    
    
    func checkSubmitButton() {
        var toppingsChosen = false
        for blean in selectedToppings {
            if (blean == true) {
                toppingsChosen = true
                break;
            }
        }
        if (burgerChosen && toppingsChosen) {
            submitButton.isEnabled = true
            submitButton.setTitleColor(UIColor(red: 0.1529, green: 0.5608, blue: 0.9176, alpha: 1), for: UIControl.State.normal)
            submitButton.layer.borderColor = UIColor(red: 0.1529, green: 0.5608, blue: 0.9176, alpha: 1).cgColor
        }
        else {
            submitButton.setTitleColor(UIColor(red: 0.5608, green: 0.749, blue: 0.9176, alpha: 1), for: UIControl.State.normal)
            submitButton.layer.borderColor = UIColor(red: 0.5608, green: 0.749, blue: 0.9176, alpha: 1).cgColor
        }
    }
    
    
    
    @IBAction func submitClicked(_ sender: UIButton) {
        
        var burgerEnum : BurgerType = BurgerType.impossible
        
        // Finding which burger is selected
        if (firstBurgerStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)) {
            burgerEnum = BurgerType.impossible
        }
        else if (secondBurgerStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)) {
            burgerEnum = BurgerType.inNout
        }
        else if (thirdBurgerStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)) {
            burgerEnum = BurgerType.fiveGuys
        }
        else if (fourthBurgerStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1)) {
            burgerEnum = BurgerType.steak
        }
        
        // Finding which toppings are selected
        var chosenToppings : [Toppings] = []
        if firstToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.ketchup)
        }
        if secondToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.mustard)
        }
        if thirdToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.mayonnaise)
        }
        if fourthToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.pickles)
        }
        if fifthToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.jalapenos)
        }
        if sixthToppingStackView.backgroundColor == UIColor(red: 0.6588, green: 0.9176, blue: 1, alpha: 1) {
            chosenToppings.append(Toppings.onions)
        }
        
        // Find cooking time
        var cookingEnum : Cooking
        switch cookingTimeSegmentIndex.selectedSegmentIndex {
        case 0:
            cookingEnum = Cooking.raw
        case 1:
            cookingEnum = Cooking.regular
        case 2:
            cookingEnum = Cooking.burnt
        default:
            cookingEnum = Cooking.regular
        }
            
        let order = Burger(enteredType: burgerEnum, enteredTime: cookingEnum, enteredAmount: Int(amountOfBurgersTextField.text!)!, enteredToppings: chosenToppings)
        //orders.append(order)
        price = order.price
        performSegue(withIdentifier: "toCheckout", sender: nil)
    }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            let nvc = segue.destination as! PayViewController
            nvc.incoming = "Amount Due: $\(price)"
        }
        
    }
    
    
    

    
    

