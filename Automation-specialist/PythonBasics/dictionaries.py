dictionary means: Key-value pairs, keys are unique, mutable.
# Create dictionary
person = {
    "name": "Alice",
    "age": 30,
    "city": "New York"
}

# Access value by key
print(person["name"])  # Output: Alice

# Add or update key
person["email"] = "alice@example.com"

# Remove key
del person["city"]

# Loop through dictionary
for key, value in person.items():
    print(key, ":", value)
