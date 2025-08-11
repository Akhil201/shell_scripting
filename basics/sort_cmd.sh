 1. Sort by salary (column 5) numerically ascending

tail -n +2 employees.csv | sort -t, -k5,5n
tail -n +2: skips the header

-t,: comma is the delimiter

-k5,5n: sort by column 5 numerically

Sort by salary descending

tail -n +2 employees.csv | sort -t, -k5,5nr
r: reverse order (descending)

Sort by country (column 4), alphabetically

tail -n +2 employees.csv | sort -t, -k4,4