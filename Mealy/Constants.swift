//
//  Constants.swift
//  Mealy
//
//  Created by Lucas Budz on 2020-12-28.
//

struct K {
    static let cellIdentifier = "ReusableCell"
    static let cellNibName = "FoodCell"
    static let categories = [
        "Fruits",
        "Vegetables",
        "Dairy",
        "Meat",
        "Fish",
        "Breads",
        "Miscellaneous"
    ]
    static let foodSegue = "goToFood"
    
    static let fakeData: [String: [String]] = [
        "Fruits": ["Avocado", "Banana", "Kiwii"],
        "Vegetables": ["Carrots", "Peas", "Mushrooms"],
        "Dairy": ["Milk", "Plain Yogurt"],
        "Meat": ["Steak", "Chicken", "Veal", "Eggs"],
        "Fish": ["Haddock", "Salmon", "Tuna"],
        "Breads": ["White Bread", "Rye Bread", "Whole Wheat Bread"],
        "Miscellaneous": ["Olive oil", "Salt", "Pepper", "Baking soda"]
    ]
}
