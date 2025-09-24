import os

def unsafe_run(user_input):
    # Vulnerable to command injection if user_input is not sanitized!
    os.system("echo " + user_input)

# Example usage
if __name__ == "__main__":
    user_data = input("Enter your name: ")
    unsafe_run(user_data)
