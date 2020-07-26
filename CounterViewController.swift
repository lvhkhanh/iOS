    var count = 0
    // property
    // A view in Storyboard needs an outlet if it needs to be modified programmatically.
    @IBOutlet var label = UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

//         // label
//         let label = UILabel()
//         label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
//         label.text = "0"
//         view.addSubview(label)
//         self.label = label
        
        // button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 250, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.AddSubview(button)
        
        button.addTarget(self, action; #selcetor(CounterViewController.incrementCount), for: UIControlEvents.touchupInside)
        
    }
    
    // method
    // A view in Storyboard needs an action if it is expected to respond to user input.
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
