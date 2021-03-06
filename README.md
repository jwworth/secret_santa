# Secret Santa

This is Secret Santa, a Secret Santa engine written in Ruby. It's faster than names in a hat; you can't draw yourself; two people can't draw each other.

### Installation & Usage

Add to gemfile:
```
gem 'secret_santa', '~> 0.0.3'
```
Or install:
```
gem install secret_santa
```
Run the executable:
```
$ secret_santa
Enter each name in the Secret Santa pool, separated by a space:
=> alfred brian carl david edward

2014 Secret Santa List:
alfred -> david
brian -> alfred
edward -> brian
carl -> edward
david -> carl

List saved to 2014_secret_santa_list.png
```
This creates a graph like this in your current directory:

![2014 Secret Santa List Example](2014_secret_santa_list_example.png)

### Contributing

If you'd like to contribute to Secret Santa, please submit a pull request via Github.
