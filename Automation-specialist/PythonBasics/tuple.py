Ordered, immutable (cannot change), allows duplicates.
# Create a tuple
coordinates = (10, 20)

# Access elements
print(coordinates[1])  # Output: 20

# Tuples cannot be modified: coordinates[0] = 15  # Error!

# Tuple with single element
single = (5,)

# Loop through tuple
for c in coordinates:
    print(c)
