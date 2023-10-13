# Model
Make your type Codable with confidence. 

Don't know the type of a key's value in JSON response no problem. 
Simple mark it with @AnyValueWrapper and @DefaultStringEmpty in case you always want a String ie 
{
    price: "45000"
}

or 

{
    price: 45000
}

struct item {
    @AnyValueWrapper @DefaultStringEmpty var price: String
}

Key might be null or not exist at all some responses no problem.
struct item {
    @DefaultValueWrapper @DefaultStringEmpty var price: String
}

if no value is received in either @DefaultValueWrapper or @AnyValueWrapper
default value of the nested property wrapper will be used ie in our case @DefaultStringEmpty will give "" 

No need to write long custom init for your codable types.

No need to do long optional chanings in code due to default values. 

No need to convert JSON response type into native type every time before use ie String to url just use the wrapper 

{
    pictureUrl : "https://static1.pakgari.com/ad_pictures/1859/Slide_zymol-cleaner-wax-18596687.jpg"
}
struct item {
    @FullStringToUrl var pictureUrl: String
}
simple use it  as item.$pictureUrl '$' will give you URL?

Custom property wrappers. 
you can create your own wrappers to use in Codable types. Just confirm your property wrapper with CodAbleInetilizer protocol and that it. 
Lets assume you have to show a free shiping tag on the base of a Bool

@propertyWrapper struct ShippingPrice: CodAbleInetilizer {
    static var defaultValue: Bool = false
    var wrappedValue : Bool
    var projectedValue : String {
        get{
            return wrappedValue  ? "Free Shipping" : .emptyString
        }
    }
}
use it any where in your codables 




