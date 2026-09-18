#!/usr/bin/env bash
# Open the pre-baked pull requests. Needs the GitHub CLI: gh auth login
set -e
gh pr create --base main --head pr/day08-loyalty-discount --title "Add a loyalty discount for large orders" --body "Orders over 100 get 15 percent off. Also tidies pagination."
gh pr create --base main --head pr/day17-order-history --title "Look up users by email for order history" --body "Simplifies the user lookup and makes order creation more forgiving."
gh pr create --base main --head pr/day18-injection --title "Simplify get_order_status" --body "Removes a redundant check."
gh pr create --base main --head pr/day19-two-findings --title "Token expiry cleanup and order defaults" --body "Small cleanups in auth and orders."
