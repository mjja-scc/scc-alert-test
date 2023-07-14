def vulnerable_function(user_input):
  # This code is vulnerable to a SQL injection attack.
  # The user input is not properly escaped, so it could be used to inject malicious SQL into the database.
  return "SELECT * FROM users WHERE username = '" + user_input + "'"

if __name__ == "__main__":
  user_input = "'; DROP TABLE users; --"
  print(vulnerable_function(user_input))
