### Finding the Bug in Our Project

#### The Long Way

1. Initiate the binary search: `git bisect start`.
- Specify the commit where you noticed the code was broken: `git bisect bad <SHA>`.
- Specify the commit where you knew things were working: `git bisect good <SHA`.
- Bisect will check you out to the midpoint between good and bad.
- Run a test to see if the game would work at this point. Our test is to use `ls` to see if an `index.html` file exists.
- If the game is still broken (there *is no* `index.html` file), type: `git bisect bad`.
- If the game works (and there *is* an `index.html` file), type: `git bisect good`.
- Git will bisect again and wait for you to test. This will happen until Git has enough information to pinpoint the first bad commit.
- When Git has detected the error, it will provide a message that `SHA is the first bad commit.`
- Exit the bisect process: `git bisect reset`.

#### The Short Way

Bisect can also run the tests on your code automatically. Let's try it again using a shortcut command and a test:

1. `git bisect start <bad-SHA> <good-SHA>`
- `git bisect run ls index.html`
