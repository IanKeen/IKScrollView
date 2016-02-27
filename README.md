# IKScrollView

## What does it do?
If you have ever struggled to get autolayout to play nice with a `UIScrollView` or just given up entirely and done it in code instead then you might be interested in `IKScrollView`. It allows you to _easily_ use a scrollview with autolayout.

## Using IKScrollView
Using `IKScrollView` is very simple and requires 0 to 1 line of code.

- Add a `UIScrollView` to your view controller.

![](IKScrollView_1.png)

- Change its class type to `IKScrollView`.

![](IKScrollView_2.png)

- Add a free floating `UIView` to your view controller. (i.e. a view that is not part of the view hierarchy)

![](IKScrollView_3.png)

- Connect the outlet from your `IKScrollView`s `contentView` property to the content view your free floating view.

![](IKScrollView_4.png)

![](IKScrollView_5.png)

- Build your content view with autolayout however you want!. In the example here my content view is designed for vertical scrolling. (The default for `IKScrollView`)

![](IKScrollView_6.png)

- Profit! :)
 
![](IKScrollView.gif)

# Size Matching
`IKScrollView` allows you to alter how the content view is sized with the `sizeMatching` property. The possible values are:

- `SizeMatching.Width`: The content view will keep its height and be sized to the width of the `IKScrollView` (This is the default setting)
- `SizeMatching.Height`: The content view will keep its width and be sized to the height of the `IKScrollView`
- `SizeMatching.Both`: The content view will be sized to match the width and height of the `IKScrollView`
- `SizeMatching.None`: No resizing will happen to the content view

# Installation
Install via cocoapods by adding the following to your Podfile

```
pod "IKScrollView", "~>1.0"
```

or manually by adding `IKScrollView.swift` to your project.

# The rest...
There is an included app so you can see it in action.
