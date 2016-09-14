# blank

method Blank for Crystal Language

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  blank:
    github: kostya/blank
```


## Usage


```crystal
require "blank"

p "".blank? # => true
p 1.blank? # => false
p nil.blank? # => true
p [1].blank? # => false
```
