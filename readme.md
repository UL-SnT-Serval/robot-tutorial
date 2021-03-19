# Robot Framework Tutorial

This repository contains a tutorial to guide you through the first steps of the amazing world of Robot Framework. Before starting make sure you have the prerequisite installed in order to be able to move on with the examples.

## Perquisites

* Python 3.x.x
* pip
* (optional) virtualenv

While virtualenv is not a requirement, we recommend to isolate each project in its own virtual environment in order to make sure the proper dependencies are installed correctly and avoid any conflict.

## Recommended IDE

To follow this tutorial, we recommend the [VS Code](https://code.visualstudio.com/download) with the [Robot Framework Intellisense](https://github.com/tomi/vscode-rf-language-server) plugin that offers support for the Robot Framework language such as syntax highlighting and reference finding.

## Install Robot framework

0. (Optional) Create a virtual and move in it.

    ```
    mkvirtualenv robotframework
    workon robotframework
    ```

1. The installation of Robot Framework is straightforward, simply run the following command. 

    ```
    pip install robotframework
    ```

2. Verify the installation wen smoothly by running the command below.

    ```
    robot --version
    ```

    If the installation was successful, you should see the framework version displayed as below.

    ```
    > robot --version
    Robot Framework 4.0 (Python 3.8.2 on win32)
    ```

    For more details on the installation process, do not hesitate to consult the [official installation guide](https://github.com/robotframework/robotframework/blob/master/INSTALL.rst).

## Install web drivers

WebDriver is a remote control interface that enables introspection and control of user agents. It provides a platform- and language-neutral wire protocol as a way for out-of-process programs to remotely instruct the behavior of web browsers [1]. 

All the major browsers have a wbdriver for their platform which allows there automation. And can be found on their pages, e.g.:

* [Chrome](https://sites.google.com/a/chromium.org/chromedriver/home)
* [FireFox](https://github.com/mozilla/geckodriver/releases/tag/v0.29.0)
* [Edge and Internet Explorer](https://developer.microsoft.com/en-us/microsoft-edge/tools/webdriver/)

To install the drivers follow the following steps:

1. Download the driver that corresponds to the version of the browser you have installed on your machine.

2. Unzip the file to a folder of your choice. We recommend using the `~/.webderiver/` folder for all the drivers.
   
3. To allow Robot Framework to use the WebDriver (or more specifically the Selenium Library), make sure to add the folder where you extracted the webdriver (e.g. `~/.webderiver/`) to the `PATH` environment variable.


## Install Robot Framework Libraries

Robot Framework capabilities can be extended by libraries implemented with Python or Java. The framework has a rich ecosystem around it, consisting of libraries and tools that are developed as separate projects [2]. Typically, harnesses to interact with the System Under Test are present in such packages. 

In this series we will use the [Selenium2Library](https://robotframework.org/Selenium2Library/Selenium2Library.html) which allows to interact with web pages. To install it run the following command.

```
pip install selenium robotframework-selenium2library webdrivermanager
```

## References

[1] https://www.w3.org/TR/webdriver1/

[2] https://robotframework.org/