# Robot Framework Automation
Hi I am Sukma and welcome to my **Robot Framework Automation** project! This repository showcases automated tests for the shopping cart checkout journey on [SauceDemo](https://www.saucedemo.com/) using **Robot Framework** and **Gherkin-style syntax**.

## Project Overview
The automation tests cover the following user journey:
1. **Login** to the SauceDemo platform.
2. **Add items** to the shopping cart.
3. **Proceed to checkout** and fill in shipping information.
4. **Validate** the checkout information page.

## Table of Contents
- [Installation](#installation)
- [Test Execution](#test-execution)
- [Reporting](#reporting)

## Installation

1. Clone this repository:

    ```bash
    git clone https://github.com/andsukma/LP-Assignment-2A.git
    ```
2. Navigate to the project directory:
    ```bash
    cd LP-Assignment-2A
    ```
3. Install 
    ```bash
    pip3 install -r requirements.txt
    ```
## Test Execution
To run tests, use the following command:
```bash
robot tests/
```
You can also run individual test files or test cases using:
```bash
robot tests/shopping-cart-checkout.robot
```
## Reporting
Once the tests are executed, Robot Framework will generate the following reports in the root directory:
* **output.xml**: Raw output file for the test run.
* **report.html**: Test summary report.
* **log.html**: Detailed test logs with steps and execution results.
You can open report.html in your browser to view a high-level summary of the test results, or use log.html for detailed information.
