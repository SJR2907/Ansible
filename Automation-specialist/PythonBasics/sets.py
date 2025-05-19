set means: Unordered, mutable, no duplicates.
# Create a set
colors = {"red", "green", "blue"}

# Add element
colors.add("yellow")

# Remove element
colors.discard("green")

# No duplicates
colors.add("red")  # Still only one "red"

# Loop through set (order not guaranteed)
for color in colors:
    print(color)
