def vulnerable_function(user_input):
  # This code is vulnerable to a cross-site scripting (XSS) attack.
  # The user input is not properly escaped, so it could be used to inject malicious code into the page.
  return "<script>alert(document.cookie)</script>" + user_input

if __name__ == "__main__":
  user_input = "Hello, world!"
  print(vulnerable_function(user_input))
