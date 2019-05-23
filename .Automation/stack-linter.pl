#!/usr/bin/perl
########################################################################
########################################################################
######### Linter for training-Manual @admiralAwkbar ####################
########################################################################

#############
# Load Libs #
#############
use strict;

$|=1;

##################
#### GLOBALS: ####
##################
my $buildDir = undef;      # Current build directory
my $foundErrorJson = 0;    # Flag for error found
my $foundErrorYml = 0;     # Flag for error found
my $foundErrorPython = 0;  # Flag for error found
my $foundErrorPerl = 0;    # Flag for error found
my $foundErrorBash = 0;    # Flag for error found
my $linterFileName = "yaml-linter-rules.yml";   # Name of the linter file
my $linterRules = undef;   # Rules to run the linter

###############
#### MAIN: ####
###############
GetBuildDir();    # Get the current build dir
GetLinterConfig();# Find the linter config
Header();         # Basic print statements
JsonLinter();     # Validate the json files
YmlLinter();      # Validate the yml files
PythonLinter();   # Validate the python scripts
PerlLinter();     # Validate the perl scripts
BashLinter();     # Validate the bash scripts
Footer();         # Basic footer prints

#######################################################################
#################### SUB ROUTINES BELOW ONLY ##########################
#######################################################################
#######################################################################
#### SUB ROUTINE Header ###############################################
sub Header
{
  print "-------------------------------------------------------------------\n";
  print "This step will lint GitHub Training\n";
  print "-------------------------------------------------------------------\n";
}
#######################################################################
#### SUB ROUTINE Footer ###############################################
sub Footer
{
  ##############################
  # Set the state of the build #
  ##############################
  my $state = 0;

  # Basic prints of all states
  print "-------------------------------------------------------------------\n";
  print "Error Reports:\n";
  print "Json_Errors=$foundErrorJson, Yml_Errors=$foundErrorYml, Python_Errors=$foundErrorPython, Perl_Errors=$foundErrorPerl, Bash_Errors=$foundErrorBash\n";

  ###############################
  # Check for Json errors found #
  ###############################
  if($foundErrorJson == 1)
  {
    $state = 1;
  }

  ##############################
  # Check for Yml errors found #
  ##############################
  if($foundErrorYml == 1)
  {
    $state = 1;
  }

  #################################
  # Check for Python errors found #
  #################################
  if($foundErrorPython == 1)
  {
    $state = 1;
  }

  ###############################
  # Check for Perl errors found #
  ###############################
  if($foundErrorPerl == 1)
  {
    $state = 1;
  }

  ###############################
  # Check for Bash errors found #
  ###############################
  if($foundErrorBash == 1)
  {
    $state = 1;
  }

  ###################
  # Print the goods #
  ###################
  print "-------------------------------------------------------------------\n";
  print "Step has completed with exit code: $state\n";
  exit($state);
}
#######################################################################
#### SUB ROUTINE GetBuildDir ##########################################
sub GetBuildDir
{
  # need to find and set the current directory
  my $command = "pwd 2>&1";
  my $result = `$command`;

  # Check for errors from shell
  if ($?==0)
  {
    # Clean and set var
    chomp($result);
    $buildDir = $result;
  }
  else
  {
    # errors detected from shell
    print "ERROR! Failed to get Build Dir!\n";
    DebugErrors();
  }
}
#######################################################################
#### SUB ROUTINE GetLinterConfig ######################################
sub GetLinterConfig
{
  print "-------------------------------------------------------------------\n";
  print "Locating Linter config...\n";
  # Need to find the file
  my $command = "find . -type f -name \"$linterFileName\" 2>&1";
  my $result = `$command`;
  #print "Result:\[$result\]\n";

  if ($?!=0)
  {
    print "WARN! Failed to find Linter rules. Defaulting to relaxed.\n";
    $linterRules = "-d relaxed";
  }
  else
  {
    # Need to see if we got a blank response back
    if (length($result) < 2)
    {
      print "WARN! Failed to find Linter rules. Defaulting to relaxed.\n";
      $linterRules = "-d relaxed";
    }
    else
    {
      # Clean of new lines
      chomp($result);
      # We now have the pathh to the file, need to set it
      print "Found yaml linter rules, setting pathing...\n";
      $linterRules = "-c $result";
    }
  }
}
#######################################################################
#### SUB ROUTINE PythonLinter #########################################
sub PythonLinter
{
  print "-------------------------------------------------------------------\n";
  print "Running Python linter now...\n";
  # Need to find all files that end with .py
  my $command = "find . -type f -name \"*.py\" 2>&1";
  my @results = `$command`;

  # Check the shell for success
  if ($?==0)
  {
    # Itterate through all files found
    foreach my $filePath (@results)
    {
      # Clean the var
      chomp($filePath);
      print "Checking file:\[$filePath\]\n";
      # Use linter
      my $command = "pylint -E $filePath 2>&1";
      my @results = `$command`;

      # Check the shell return
      if ($?!=0)
      {
        # Set the error found
        $foundErrorPython = 1;
        foreach my $result (@results)
        {
          # Clean error message
          chomp($result);
          print "ERROR: $result\n";
        }
      }
    }
  }
}
#######################################################################
#### SUB ROUTINE PerlLinter ###########################################
sub PerlLinter
{
  print "-------------------------------------------------------------------\n";
  print "Running Perl linter now...\n";
  # Need to find all files that end with .pl
  my $findCommand = "find . -type f -name \"*.pl\" 2>&1";
  my @findResults = `$findCommand`;

  # Check the shell return
  if ($?==0)
  {
    # Itterate through the files found
    foreach my $filePath (@findResults)
    {
      # Clean the path
      chomp($filePath);
      print "Checking file:\[$filePath\]\n";
      # Lint the files
      my $lintCommand = "perl -Mstrict -cw $filePath 2>&1";
      my @lintResults = `$lintCommand`;

      # Check the shell return
      if ($?!=0)
      {
        # Mark the error
        $foundErrorPerl = 1;
        foreach my $result (@lintResults)
        {
          # Clean the error response
          chomp($result);
          print "ERROR: $result\n";
        }
      }
    }
  }
}
#######################################################################
#### SUB ROUTINE YmlLinter ############################################
sub YmlLinter
{
  print "-------------------------------------------------------------------\n";
  print "Running Yml linter now...\n";
  # Need to find all files that end with .yml
  my $findCommand = "find . -type f -name \"*.yml\" 2>&1";
  my @findResults = `$findCommand`;

  # Check the shell return
  if ($?==0)
  {
    # Itterate through the files found
    foreach my $filePath (@findResults)
    {
      # Clean the path
      chomp($filePath);
      print "Checking file:\[$filePath\]\n";
      # Lint the files
      my $lintCommand = "yamllint $linterRules $filePath 2>&1";
      #print "DEBUG--- running command:\[$lintCommand\]\n";
      my @lintResults = `$lintCommand`;

      # Check the shell return
      if ($?!=0)
      {
        # Mark the error
        $foundErrorYml = 1;
        foreach my $result (@lintResults)
        {
          # Clean the error response
          chomp($result);
          print "ERROR: $result\n";
        }
      }
    }
  }
}
#######################################################################
#### SUB ROUTINE BashLinter ###########################################
sub BashLinter
{
  print "-------------------------------------------------------------------\n";
  print "Running Bash linter now...\n";
  # Need to find all files that end with .sh
  my $findCommand = "find . -type f -name \"*.sh\" -type f -not -path \"*.git*\" -type f -exec awk 'FNR == 1 && /^#!.*sh/{print FILENAME}' {} + 2>&1";
  my @findResults = `$findCommand`;

  # Check the shell return
  if ($?==0)
  {
    # Itterate through the files found
    foreach my $filePath (@findResults)
    {
      # Clean the path
      chomp($filePath);
      print "Checking file:\[$filePath\]\n";
      # Lint the files
      my $lintCommand = "shellcheck $filePath 2>&1";
      #print "DEBUG--- running command:\[$lintCommand\]\n";
      my @lintResults = `$lintCommand`;

      # Check the shell return
      if ($?!=0)
      {
        # Mark the error
        $foundErrorBash = 1;
        foreach my $result (@lintResults)
        {
          # Clean the error response
          chomp($result);
          print "ERROR: $result\n";
        }
      }
    }
  }
}
#######################################################################
#### SUB ROUTINE JsonLinter ###########################################
sub JsonLinter
{
  print "-------------------------------------------------------------------\n";
  print "Running Json linter now...\n";
  # Need to find all files that end with .json
  my $findCommand = "find . -type f -name \"*.json\" 2>&1";
  my @findResults = `$findCommand`;

  # Check the shell return
  if ($?==0)
  {
    # Itterate through the files found
    foreach my $filePath (@findResults)
    {
      # Clean the path
      chomp($filePath);
      print "Checking file:\[$filePath\]\n";
      # Lint the files
      my $lintCommand = "jsonlint-php $filePath 2>&1";
      my @lintResults = `$lintCommand`;

      # Check the shell return
      if ($?!=0)
      {
        # Mark the error
        $foundErrorJson = 1;
        foreach my $result (@lintResults)
        {
          # Clean the error response
          chomp($result);
          print "ERROR: $result\n";
        }
      }
    }
  }
}
#######################################################################
#### SUB ROUTINE DebugErrors ##########################################
sub DebugErrors
{
  print "###########################\n";
  print "#### DEBUG ERRORS LOOP ####\n";
  print "##### STEP HAS FAILED #####\n";
  print "#### END TRANSMISSION ####\n";
  print "###### EXITING NOW #######\n";
  print "##########################\n";

  exit(1);
}
