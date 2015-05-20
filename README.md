# Make Pairs

## Usage
```ruby
./make_pairs pocket_gophers
```

Then immediately:

```bash
git commit -m 'log todays pairs'
```

The argument must be a file that contains the cohort members and their previous pairs. One must start with an empty file in the following format.

```json
{  
  "Ace Burgess": [],
  "Alex Taber": [],
  "Aristides Perez": [],
  "Brendan Miranda": [],
  "Doraly Pantaleon": [],
  "Luis Echenique": [],
  "Nikolai Calder": [],
  "Scott Warner": [],
  "Sherman Ng": [],
  "Siddharth Watal": [],
  "Tanya Trinkle": [] 
}

```

Pair history is kept in a file called `todays_pairs`. Review the file's git history on a certain day to see that day's pairs



## Output

If Cohort contains an odd number, solo-er will pair with themselves

```sh
Pair: Ace Burgess & Tanya Trinkle  
Pair: Alex Taber & Siddharth Watal  
Pair: Aristides Perez & Sherman Ng  
Pair: Brendan Miranda & Scott Warner  
Pair: Doraly Pantaleon & Nikolai Calder  
Pair: Luis Echenique & Luis Echenique  

```

Output is markdown-formatted of reasy pasting into wikis.

```sh
./make_pairs pocket_gophers | pbcopy
```

### Todo

- Accept STDIN as student list. Ex:
```sh
backoffice --cohort 14 | make_pairs
```
