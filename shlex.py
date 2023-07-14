import os
import shlex

def vulnerable_function(user_input):
  # This code is vulnerable to a command injection attack.
  # The user input is not properly escaped, so it could be used to execute arbitrary commands on the system.
  return os.system(shlex.quote(user_input))

def main():
  user_input = "echo 'This is a command injection'; ls -la"
  print(vulnerable_function(user_input))

if __name__ == "__main__":
  main()
