import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var fileName: UILabel!
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var count = 0;
    var photos = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        photos.append("dog1.png")
        photos.append("dog2.png")
        photos.append("dog3.png")
        photos.append("dog4.png")
        photos.append("dog5.png")
        photos.append("dog6.png")
        photos.append("dog7.png")
        photos.append("dog8.png")
        photos.append("dog9.png")
        photos.append("dog10.png")
        
        let left = UISwipeGestureRecognizer(target : self, action : #selector(Swipeleft))
        left.direction = .left
        self.imageView.addGestureRecognizer(left)
                       
        let right = UISwipeGestureRecognizer(target : self, action : #selector(Swiperight))
        right.direction = .right
        self.imageView.addGestureRecognizer(right)
    }
    
    @objc func Swipeleft(){
        if (count > 0  && count < 9 ) {
            count = count + 1
        } else {
            count = 1;
        }
        print("left")
        print(count)
        imageView.image = UIImage(named: photos[count])
        fileName.text = photos[count]
    }
           
    @objc func Swiperight(){
        if (count > 0  && count < 9 ) {
            print(count)
            count = count - 1
        } else {
            count = 9;
        }
        print("right")
        print(count)
        imageView.image = UIImage(named: photos[count])
        fileName.text = photos[count]
    }
}

