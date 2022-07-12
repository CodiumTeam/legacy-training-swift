import GildedRose

let items = [
    Item(name: "+5 Dexterity Vest", sellIn: 10, quality: 20),
    Item(name: "Aged Brie", sellIn: 2, quality: 0),
];

let app = GildedRose(items: items);

for i in 1...3 {
    print("-------- day \(i) --------");
    print("name, sellIn, quality");
    for item in items {
        print(item);
    }
    print("");
    app.updateQuality();
}
