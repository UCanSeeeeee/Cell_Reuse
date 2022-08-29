class Heap {
    
    // 建小根堆
    func makeMinHeap(_ heap: inout [Int]) {
        let n = heap.count
        var i = n - 1
        while i >= 0 {
        minHeapFixDown(&heap, n/2 - 1, i)
            i -= 1
        }
    }
    
    func minHeapFixDown(_ heap: inout [Int], _ count: Int, _ index: Int) {
        var index = index
        if index > count {
            return
        }
        let temp = heap[index]
        var lastIndex = index
        while index <= count {
            if heap[2 * index + 1] < temp {
                lastIndex = 2 * index + 1
            }
            if 2 * index + 2 < heap.count && heap[2 * index + 2] < heap[2 * index + 1] && heap[2 * index + 2] < temp {
                lastIndex = 2 * index + 2
            }
            if lastIndex != index {
                heap[index] = heap[lastIndex]
                index = lastIndex
            } else {
                break
            }
        }
        print(temp)
        heap[lastIndex] = temp
    }
    
    // 小根堆添加number
    func minHeapAddNumber(_ heap: inout [Int], _ data: Int) {
        let index = heap.count
        heap.append(data)
        minHeapFixUp(&heap, index)
    }

    func minHeapFixUp(_ heap: inout [Int], _ index: Int) {
        var son = index
        var father = (son - 1) / 2
        let temp = heap[son]
        while father >= 0 && son != 0 {
            if heap[father] <= temp {
                break
            }
            heap[son] = heap[father]
            son = father
            father = (son - 1) / 2
        }
        heap[son] = temp
    }

}

var test = Heap()
var heap = [1,3,6,2,5,9,0]
test.makeMinHeap(&heap)
print(heap)

