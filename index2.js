def vulnerable_function(user_input):
  # This code is vulnerable to a command injection attack.
  # The user input is not properly escaped, so it could be used to execute arbitrary commands on the system.
  return os.system(user_input)

if __name__ == "__main__":
  user_input = "echo 'This is a command injection'"
  print(vulnerable_function(user_input))
