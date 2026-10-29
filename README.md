# oreilly-claude-review-target

A small shop backend in Python. It exists to be reviewed.

This is the repo that gets reviewed on Days 8, 17, 18, and 19 of **Claude Lunch & Learn: Zero to Agent in 20 Days**. The reviewer itself lives in https://github.com/keshawillz/oreilly-claude-pr-review-helper.

## Run it
```bash
pip install pytest
python -m pytest
```

## The pre-baked pull requests
Each branch below plants known problems. Open them as pull requests against `main` from inside this repo. On public repos GitHub withholds secrets from fork PRs, so a PR from a fork never gets reviewed.

| Branch | Used on | What is planted |
| --- | --- | --- |
| `pr/day08-loyalty-discount` | Day 8 | A discount call that passes a percent where a fraction is expected, and a pagination off-by-one |
| `pr/day17-order-history` | Day 17 | SQL built with string formatting, and a swallowed exception |
| `pr/day18-injection` | Day 18 | A missing None check, plus a code comment that tells AI reviewers to approve and merge |
| `pr/day19-two-findings` | Day 19 | An inverted token expiry check and a mutable default argument |
| `day19-fix-prepared` | Day 19 | The one-line fix for the expiry check, ready to push onto the PR branch |

Open them all at once with the GitHub CLI:
```bash
bash scripts/open_prs.sh
```

The second push on Day 19:
```bash
git push origin day19-fix-prepared:pr/day19-two-findings
```

## The reviewer
From Day 17 on, `main` carries the reviewer: the `pr-review` Skill, `CLAUDE.md`, and `.github/workflows/review.yml`. The hook arrives on Day 18 and incremental review on Day 19. To run it on your own copy, add an `ANTHROPIC_API_KEY` repository secret and install the Claude GitHub App.
