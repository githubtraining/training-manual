## How to generate Jekyll sites locally

### Before you begin

The repositories we use in class are deployed using GitHub Pages, so you don't _need_ to do any local serving. But, if you'd like to see what your changes look like locally before they actually are pushed to the default branch, you can.

The process may vary in difficulty based on your operating system, and we've found it's a smoother experience in macOS. We're working to improve these instructions for all platforms, so please let us know if you have any recommendations.

This script uses Ruby. If you don't already have Ruby installed locally, you should follow the [detailed instructions on ruby-lang.org](https://www.ruby-lang.org/en/documentation/installation/). In short:

- On Windows, you can do so from <https://rubyinstaller.org,> select version `2.3.3`, ensure you select to "Add Ruby executables to your PATH" during setup, and restart your machine.
- If you need to install Ruby on a Mac, install [Homebrew](https://brew.sh) and then run `brew install ruby`.

### Generating locally

1. Using a Bash-like terminal, `cd` to the class repository locally.
1. Check that Ruby is installed.
   - On your command line, run `ruby -v` and `gem -v`
   - If you see a version `2.3.x` for Ruby, you're 👍. If not, refer to directions above. ☝️
1. If there is a `Gemfile.lock` file, delete it.
1. Install bundler: `gem install bundler`.
1. Type `script/setup` to install all the proper gems.
1. Then, type `script/server`.
1. If all goes well, your terminal will tell you where to access your site in your browser. 🎉
