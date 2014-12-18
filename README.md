# Secret Santa

This is Secret Santa, a Secret Santa engine written in Ruby.

### Installation & Usage

Add to gemfile:
```
gem 'secret_santa', '~> 0.0.2'
```
Or install:
```
gem install secret_santa
```
Run the executable:
```
$ secret_santa
Enter each name in the Secret Santa pool, separated by a space:
joe jim jack jake james

2014 Secret Santa List:
jim -> joe
james -> jim
jake -> james
jack -> jake
joe -> jack

List saved to 2014_secret_santa_list.png
```
This will generate a graphviz PNG file of the list in your current directory.
