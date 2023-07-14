import urllib

def vulnerable_function(user_input):
  # This code is no longer vulnerable to a SQL injection attack.
  # The user input is properly escaped before it is used in the `SELECT` statement.
  return "SELECT * FROM users WHERE username = '" + urllib.quote_plus(user_input) + "'"

if __name__ == "__main__":
  user_input = "'; DROP TABLE users; --"
  print(vulnerable_function(user_input))
