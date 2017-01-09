# YMUserDefault
Simple UserDefault extension for storing, retreving and remove keys.

# 1. Add your key name with specific type
```
extension UserDefaults {
    struct Main : UserDefaultable {
        private init() { }
        
        enum BoolDefaultKey : String {
            case boolKey
        }
        
        enum FloatDefaultKey:String {
            case floatKey
        }
        
        enum DoubleDefaultKey: String {
            case doubleKey
        }
        
        enum IntegerDefaultKey: String {
            case IntKey
        }
        
        enum StringDefaultKey: String {
            case strKey1
            case strKey2
        }
        
        enum URLDefaultKey: String {
            case urlKey
        }
        
        enum ObjectDefaultKey: String {
            case objKey
        }
    }
}

```
# 2. Set value in specific key :

```
UserDefaults.Main.set(true, forKey: .boolKey)
UserDefaults.Main.set(10.2, forKey: .doubleKey)
UserDefaults.Main.set(Float(10.55), forKey: .floatKey)
UserDefaults.Main.set(110792, forKey: .IntKey)
UserDefaults.Main.set("yudiz", forKey: .strKey1)
        
let dict  = ["name" : "Yogesh Makwana",
            "id":1339,
            "dept":"iOS"
        ] as [String : Any]
        
UserDefaults.Main.set(dict, forKey: .objKey)

```

# Get value from userdefault :

```
let dict = UserDefaults.Main.object(forKey: .objKey)
let name = UserDefaults.Main.string(forKey: .strKey1)
        
print(dict ?? "nil",name)
        
```

# Remove key from userdefault:

```
UserDefaults.Main.removeObj(forKey: .doubleKey)

```
