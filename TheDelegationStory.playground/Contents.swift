protocol OlderHobbitDelegate: AnyObject {
    func getAGlassOfWaterToOldHobbit()
}
class GrandFatherHobbit {
    weak var delegate: OlderHobbitDelegate?
    
    func tellAnyHobbitToGetMeSomeWater() {
        delegate?.getAGlassOfWaterToOldHobbit()
    }
}

class BadGrandson: OlderHobbitDelegate {
    func getAGlassOfWaterToOldHobbit() {
        print("Go get it yourself!")
    }
}

class GoodGrandson: OlderHobbitDelegate {
    func getAGlassOfWaterToOldHobbit() {
        print("Here is your water!")
    }
}
// the Story

let oldHobbit = GrandFatherHobbit()
let ivan = BadGrandson()
let petya = GoodGrandson()
oldHobbit.delegate = ivan
oldHobbit.tellAnyHobbitToGetMeSomeWater()

oldHobbit.delegate = petya
oldHobbit.tellAnyHobbitToGetMeSomeWater()

// the end
