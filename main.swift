func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    precondition(integers.count > firstIndex, "firstIndex is out of range fi=\(firstIndex) max=\(integers.count)")
    precondition(integers.count > firstIndex, "secondIndex is out of range si=\(firstIndex) max=\(integers.count)")

    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp

}

func sort(array: inout [String]) {
    for j in 0 ..< array.count {
        var i = j

        for x in j ..< array.count {
            let iValue = array[i]
            let xValue = array[x]

            if iValue > xValue {
                i = x
            }
        }

        swap(integers:&array, firstIndex: i, secondIndex: j)
    }
}


var unsorted = readInput()
sort(array: &unsorted)
print(unsorted)
