# Welcome to your First Coding Project!

This is a simple project to help you get started with Python. You should use it for writing your first scripts, let's have a look on this workspace:

---

## 📋 Table of Contents

*   [Exploring the context menu](#exploring-the-context-menu)
*   [Getting to Know Your IDE](#getting-to-know-your-ide)
*   [Getting Started](#getting-started)
*   [Your first challenge: asking what your code means](#your-first-challenge-asking-what-your-code-means)
*   [How to Run Code](#how-to-run-code)
*   [Running Files from Any Directory](#running-files-from-any-directory)

---

## Exploring the context menu

*   **`main.py`**: This is the main file where you will write your Python code. It's the only file you need to worry about for now.
*   **Other Files**: You might see other files like `GEMINI.md`, `requirements.txt`, and a folder called `.idx`. Don't worry about these! They are here to simplify things and make sure your coding environment works correctly.

## Getting to Know Your IDE

Your screen is divided into a few important sections:

*   **Explorer (Left Side)**: This is your file cabinet. You can see all the files in your project here, like `main.py`. Click on a file to open it.
*   **Editor (Center)**: This is your workbench. When you open a file, its content appears here. This is where you'll write and edit your code.
*   **Terminal (Bottom)**: This is your command center. You can run commands here to execute your code and see the output.
*   **Gemini Chat (Right Side)**: This is your AI coding assistant. You can ask Gemini questions here, and it will help you on your coding journey.


## Getting Started

1. If you don't see a folder '.venv' in the explorer you must set up your Python environment - copy and paste this command into your terminal:

```bash
   setup-venve
```

2. If your terminal doesn't start with `(.venv)`, like:<br>
&nbsp;&nbsp;`(.venv) vibecoding-02-03-68307615:$`<br>copy and paste this command into your terminal:

```bash
   activate
```

## Your first challenge: asking what your code means

Before running some code, lets practice writing a prompt to understand what it does. 

In the **Gemini Chat**, on the right side of your screen, ask:

> ```Can you explain the code in `main.py`?```


## How to Run Code

Now let's run the code you just explored:

1. Make sure `main.py` is open in the **Editor**.
2. Click into the **Terminal** at the bottom.
3. Run this command:

```bash
python main.py
```

4. You should see this message appear in the terminal:

```
Hello, world!
```

🎉 Congrats, you just ran your first Python program in Cursor!

### Running Files from Any Directory

> **Important:** The IDE play button uses the system interpreter and does not run code inside the virtual environment. This behavior is generally not configurable. To ensure the correct environment is used, run your files directly from the terminal.

To run a Python file from any directory:

1. **Confirm that your virtual environment is activated.**  
   You should see `(.venv)` at the start of your terminal prompt.

2. **Open the Terminal.**

3. **Run the file by providing its relative path:**

```bash
python session-1/1_01.py
```

**💡 Tab Autocomplete Tip:**  
Use Tab to autocomplete directories and filenames. For example, typing:

```bash
python sess
```

then pressing **Tab** will complete to:

```bash
python session-1/
```

This saves time and helps prevent typos!


---