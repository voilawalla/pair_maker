# Make Pairs

## Usage
```ruby
./da_pairs pocket_gophers
```

Pair history is kept in `pocket_gophers`. One must start with an empty file in the following format.

```json
{  "Ace Burgess": [],
  "Alex Taber": [],
  "Aristides Perez": [],
  "Brendan Miranda": [],
  "Doraly Pantaleon": [],
  "Luis Echenique": [],
  "Nikolai Calder": [],
  "Scott Warner": [],
  "Sherman Ng": [],
  "Siddharth Watal": [],
  "Tanya Trinkle": [] }

```

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

Output contains two empty spaces at the end of the line for ease of pasting into markdown.

```sh
./da_pairs pocket_gophers | pbcopy
```

### Todo

- Accept STDIN as student list. Ex:
```sh
backoffice --cohort 14 | da_pairs
```
