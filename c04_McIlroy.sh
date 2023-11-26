#! /usr/bin/env sh

# example usage - print the 5 most common words in the linked file:
## ./c04_McIlroy 5

test_page="https://raw.githubusercontent.com/llsoftsec/llsoftsecbook/main/book.md"

curl ${test_page}  |
tr -cs A-Za-z '\n' |
tr A-Z a-z         |
sort               |
uniq -c            |
sort -rn           |
sed ${1}q
