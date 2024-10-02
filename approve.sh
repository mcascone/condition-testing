#!/bin/bash

gh api repos/$REPO/actions/runs/$RUNID/pending_deployments  \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28"    \
  --method POST                                       \
  -F environment_ids[]=$ENVID                     \
  -f state="approved"                                 \
  -f comment="Auto-Approved by GitHub Actions"      \
--verbose



# curl -Lv \
#   -H "Accept: application/vnd.github+json" \
#   -H "Authorization: Bearer $GH_TOKEN" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#   https://api.github.com/repos/$REPO/actions/runs/$RUNID/pending_deployments \
#   -d '{"environment_ids":[161171787],"state":"approved","comment":"Ship it!"}'


  # -H "X-GitHub-Api-Version: 2022-11-28"             \
  # -H "Accept: application/vnd.github+json"     \