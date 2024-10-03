#!/bin/bash

gh api repos/mcascone/condition-testing/actions/runs/11168894291/pending_deployments  \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28"    \
  --method POST                                       \
  -F "environment_ids[]=4099217113"                    \
  -f "state=approved"                                 \
  -f "comment=Auto-Approved by GitHub Actions CLI"      \
  --verbose


# curl -L \
#   -X POST \
#   -H "Accept: application/vnd.github+json" \
#   -H "Authorization: Bearer $GH_TOKEN" \
#   -H "X-GitHub-Api-Version: 2022-11-28" \
#   https://api.github.com/repos/$REPO/actions/runs/$RUNID/pending_deployments \
#   -d '{"environment_ids":[11130481765],"state":"approved","comment":"Ship it!"}' \
#   --verbose


# curl -L \
# -X POST \
# -H "Accept: application/vnd.github.v3+json" \
# -H "Authorization: token $GH_TOKEN" \
# -H "X-GitHub-Api-Version: 2022-11-28" \
# https://api.github.com/repos/$REPO/actions/runs/11149406260/pending_deployments \
# -d '{"environment_ids":[11130481765],"state":"approved","comment":"Ship it!"}' \
# --verbose