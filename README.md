# Archery-score
Scores typical NASP cards with just one string input

# Install
## Android :robot:
Install termux from f-droid/github, NOT THE PLAYSTORE ITS OLD!!!  
  
Install needed tools, i forget which ones but i know you need `cargo` and `git`  
  
Run `git clone https://github.com/iliketwertles/archery-score.git && cd archery-score`  
  
If no errors run `cargo build --release && cp target/release/archeryscore ~/`  
  
Should be set :thumbsup:  
  
## Apple/iOS :apple:
Install `ish` from the Appstore  
  
Copy this command and paste it into ish, then hit enter:  
`wget -qO- https://raw.githubusercontent.com/iliketwertles/archery-score/main/install.sh | sh`  
  
Should be set :thumbsup:  

## Scoring :dart:
Then if you want to score you can run `./archeryscore` if on android,  or `archeryscore` on ios  
  
*Note that your score will look like `ss98sss97ss9878sss98s98s97s98s`  
  
* You get this by reading your score top to bottom on your score card  
* `s` can be any letter, and it equals `10`  
* The rest of the scores are represented by their number, like `9` or `8`  
