# Configuration for Robot Framework tests

# Import necessary libraries
from robot.libraries.BuiltIn import BuiltIn

# Custom keywords can be defined here
def custom_keyword():
    BuiltIn().log("This is a custom keyword.")
