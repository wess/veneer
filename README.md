# Veneer

_A simple library for building attributed strings, for a more civilized age._

---

Veneer was created to make creating attributed strings easier to read and write. Taking inspiration from SnapKit, Veneer uses blocks to construct the attributes and produce an NSAttributedString.

---


### Installation:
```ruby
pod "Veneer"
```


### Usage:
---
```swift
 let attrString = NSAttributedString(string: "Hello World") { make in
                    make.font(UIFont.boldSystemFontOfSize(32.0))
                    make.backgroundColor(.red
                    make.color(.white)
                  }

  someLabel.attributedText = attrString

```

### Author:
Wess Cope
- me@wess.io
- [@wesscope](https://twitter.com/wesscope)
