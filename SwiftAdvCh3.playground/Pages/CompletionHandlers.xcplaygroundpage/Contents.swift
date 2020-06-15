//: [Previous](@previous)

import Foundation

let handlerBlock: (Bool) -> Void = {
    if $0 {
        print("Download is Complete")
    }
    
}

let myHandlerBlock: (Bool) -> Void = { (isSucess) in
    if isSucess {
        print("My download is complete (indirect)")
    }
    
}

func downloadImage(completionHandler: (Bool) -> Void ) {
    
    for _ in 1...100 {
        print("Downloading")
    }
        
    completionHandler(true)

}

downloadImage(completionHandler: myHandlerBlock)
downloadImage { (isSuccess) in
    if isSuccess {
        print("Direct completion handler invoked")
    }
}


// Another Example

let handler: ([String]) -> Void = { (array) in
    print("Downloaded stuff are \(array)")
    
}

handler(["Learn", "Learn", "Motivate", "Enjoy"])


func workSuperHard(handlerBlock: ([String]) -> Void) {
    for _ in 1...100 {
        print("Working working working")
    }
    handlerBlock(["image1", "image2", "image3", "image4"])
}

workSuperHard(handlerBlock: handler)

workSuperHard { (image) in
    print("This is \(image)")
    //Compress the image
    //add color
    // resize
    // Save to database
}














//: [Next](@next)
