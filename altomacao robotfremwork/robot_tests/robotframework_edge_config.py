PA# Configuration for Robot Framework tests using Microsoft Edge

# Import necessary libraries
from robot.libraries.BuiltIn import BuiltIn
from SeleniumLibrary import SeleniumLibrary

# Custom keywords can be defined here
def custom_keyword():
    BuiltIn().log("This is a custom keyword.")

# Set up the SeleniumLibrary to use Microsoft Edge
def open_browser():
    library = SeleniumLibrary()
    library.open_browser(url='http://example.com', browser='edge')
