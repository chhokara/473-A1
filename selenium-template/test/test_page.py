from selenium import webdriver
from selenium.webdriver.chrome.options import Options
from selenium.webdriver.common.keys import Keys

from contextlib import contextmanager
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support.expected_conditions import staleness_of

from pathlib import Path
import os


def construct_headless_chrome_driver():
    options = Options()
    options.add_argument("--disable-extensions")
    options.add_argument("--disable-gpu")
    options.add_argument("--no-sandbox")
    options.add_argument("--headless")
    return webdriver.Chrome(options=options)


def get_landing_page_url():
    test_dir = os.getcwd()
    index_path = os.path.join(test_dir, "..", "page", "index.html")
    index_uri = Path(index_path).as_uri()
    return index_uri


# As demonstrated in the linked web page from the course assignment
@contextmanager
def wait_for_page_load(driver, timeout=30):
    old_page = driver.find_element_by_tag_name('html')
    yield
    WebDriverWait(driver, timeout).until( staleness_of(old_page) )


def test_nonsecret_scenario():
    landing_page = get_landing_page_url()
    driver = construct_headless_chrome_driver()

    # You can place additional test code here to drive this one test
    driver.get(landing_page)
    name = driver.find_element_by_id('preferredname')
    food = driver.find_element_by_id('food')
    password = driver.find_element_by_id('secret')
    submit = driver.find_element_by_id('submit')

    name.send_keys("Arsh")
    food.send_keys("Sushi")
    password.send_keys("Hello")
    submit.click()

    wait_for_page_load(driver)

    assert 'response.html' in driver.current_url 

    response_name = driver.find_element_by_id('thankname').text
    response_food = driver.find_element_by_id('foodploy').text

    assert response_name == "Arsh"
    assert response_food == "Sushi"

    # should return empty list since there is not secret button
    secret_button = driver.find_elements_by_id('secretButton')
    assert not secret_button

    driver.quit()


# You may want to add additional tests....

