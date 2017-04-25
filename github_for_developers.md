---
layout: {% if context.facilitator %}facilitator{% else %}docs{%endif%}
toc: true
permalink: /{% if context.facilitator %}facilitator/{% endif %}
---

{% if context.facilitator %}
{% include 'book/preparing_to_teach_github_for_developers' %}
{% endif %}

{% include 'book/introduction' %}

{% if context.facilitator %}
{% include 'book/01f_facilitator_note' %}
{% endif %}

# Getting Started
{% include 'book/01_getting_ready_for_class' %}
{% include 'book/02_getting_started' %}
{% include 'book/03_github_flow' %}

# Project 1: Caption This
{% include 'book/04_branching_with_git' %}
{% include 'book/05_local_git_configs' %}
{% include 'book/06_working_locally' %}
{% include 'book/07_collaborating_on_code' %}
{% include 'book/08_edit_on_github' %}
{% include 'book/09_merging_pull_requests' %}
{% include 'book/10_local_history' %}
{% include 'book/11_streamline_workflow_with_aliases' %}

# Project 2: Merge Conflicts
{% include 'book/12_resolving_merge_conflicts' %}

# Project 3: GitHub Games
{% include 'book/13_workflow_review_project_github_games' %}
{% include 'book/14_git_bisect' %}
{% include 'book/15_reverting_commits' %}
{% include 'book/16_helpful_git_commands' %}
{% include 'book/17_view_local_changes' %}

# Project 4: Local Repository
{% include 'book/18_create_local_repo' %}
{% include 'book/19_fixing_commit_mistakes' %}
{% include 'book/20_rewriting_history_git_reset' %}
{% include 'book/21_git_cherry_pick' %}
{% include 'book/22_merge_strategies_rebase' %}
{% include 'book/A_workflow_discuss' %}
{% include 'book/App_a_workflow_guide' %}
{% include 'book/App_b_fork_workflows' %}
