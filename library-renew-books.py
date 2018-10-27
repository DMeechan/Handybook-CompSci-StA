# Note: you need to add Chromedriver to your env var path:
# In fish that means running:
# set PATH $HOME/bin $PATH

import time
import datetime
from splinter import Browser

browser = Browser('chrome', headless=False)

def get_due_status():
    today_date = datetime.datetime.today().strftime('%d-%m-%y')
    return 'DUE ' + today_date

def login():
    # Enter username, wait 5 secs for user to enter password, then click 'log in'
    YOUR_USERNAME = 'abcdefgh'
    browser.fill('username', YOUR_USERNAME)
    browser.fill('password', '')
    time.sleep(6)
    browser.find_by_value('Log in').click()

def sort_by_due_date():
    # Sort by due date
    sort_button = browser.find_by_xpath('//*[@id="checkout_form"]/a[1]')
    sort_button.click()

def renew():
    sort_by_due_date()
    # Right now this only renews 2 library books
    # TODO: update script to get user input a renew X books
    # Or detect how many are due and renew all due books
    browser.find_by_id('renew0').click()
    browser.find_by_id('renew1').click()

    renew_selected_button = browser.find_by_xpath('//*[@id="checkout_form"]/a[6]')
    renew_selected_button.click()

    confirmation_button = browser.find_by_value('YES')
    confirmation_button.click()


url = 'https://library.st-andrews.ac.uk/patroninfo~S5/'
browser.visit(url)

login()

due_status = get_due_status()
print('Checking items due on: ' + due_status)

if browser.is_text_present(due_status):
    renew()
else:
    print("Exiting: could not find any books due today :D")⏎