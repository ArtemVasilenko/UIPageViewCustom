//
//  PageViewController.swift
//  UIPageViewCustom
//
//  Created by Артем on 3/19/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {
    
    var burgers = Burgers()
    var vc = ViewController()
    var vcs = [UIViewController]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        burgers.addBurgers()
        
        let firstVC = vcs.first
        setViewControllers([firstVC!], direction: .forward, animated: true, completion: nil)
        
        
        for i in burgers.namesBurgers {
            vcs.append(vc)
            
            vc.myImageView.image = UIImage(named: i)
        }
        
        dataSource = self
        
    }

}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        
        let viewControllerIndex = vcs.index(of: viewController)
        let previusIndex = viewControllerIndex! - 1
        guard previusIndex >= 0 else { return nil }
        guard vcs.count >= previusIndex else { return nil }
        
        return vcs[previusIndex]
        
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        let viewControllerIndex = vcs.index(of: viewController)
        let nextIndex = viewControllerIndex! + 1
        guard nextIndex >= 0 else { return nil }
        guard vcs.count > nextIndex else { return nil }
        guard vcs.count != nextIndex else { return nil }
        
        
        return vcs[nextIndex]
        
        
    }
    
    
}
