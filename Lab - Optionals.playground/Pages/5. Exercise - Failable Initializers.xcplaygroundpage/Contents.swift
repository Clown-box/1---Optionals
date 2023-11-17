/*:
## Exercise - Failable Initializers

 Create a `Computer` struct with two properties, `ram` and `yearManufactured`, where both parameters are of type `Int`. Create a failable initializer that will only create an instance of `Computer` if `ram` is greater than 0, and if `yearManufactured` is greater than 1970, and less than 2020.
 */
struct Computer{
    var ram = 0
    var yearManufactured:Int = 0
    init?(_ Ram:Int,_ YearManufactured:Int){
        if(Ram > 0 && (YearManufactured < 2020)&&(YearManufactured > 1970)){
            ram = Ram
            yearManufactured = YearManufactured
        }else{
            return nil
        }

    }
}

//:  Create two instances of `Computer?` using the failable initializer. One instance should use values that will have a value within the optional, and the other should result in `nil`. Use if-let syntax to unwrap each of the `Computer?` objects and print the `ram` and `yearManufactured` if the optional contains a value.
if let c1 = Computer(16, 1971){
    print(c1)
}
if let c2 = Computer(16*2, 2025){
    print(c2)
}

/*:
[Previous](@previous)  |  page 5 of 6  |  [Next: App Exercise - Workout or Nil](@next)
 */
