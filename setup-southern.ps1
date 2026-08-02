$ErrorActionPreference = "Stop"

Write-Host "Creating Southern project structure..." -ForegroundColor Cyan

$folders = @(
    ".github",
    ".github\ISSUE_TEMPLATE",
    ".github\workflows",
    "docs",
    "research",
    "benchmark",
    "models",
    "datasets",
    "training",
    "api",
    "studio",
    "community",
    "governance"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force | Out-Null
}

$files = @{
"CHARTER.md" = @'
# Southern Charter

## Purpose

Southern is an Australian open artificial intelligence initiative dedicated to building transparent, secure and globally significant AI technology.

Southern exists to advance open research, sovereign capability, responsible engineering and public access to artificial intelligence.

## Mission

Southern will:

- Build open AI models, tools and infrastructure.
- Develop Australian benchmarks and datasets.
- Publish research and engineering work transparently.
- Support the preservation of languages and cultural heritage.
- Promote privacy, safety, security and scientific integrity.
- Build an international community of contributors.

## Founder

Southern was founded by **Manish Mathew** in Australia in 2026.

## Status

This charter is an initial public draft and will evolve through transparent community governance.
'@

"DEDICATION.md" = @'
# Dedication

Southern is dedicated to elders, knowledge keepers and communities who have preserved humanity's languages, stories, cultures, knowledge and heritage across generations.

We acknowledge Aboriginal and Torres Strait Islander peoples as the First Peoples of Australia and recognise their continuing connections to Country, cultures, languages and knowledge systems.

We honour elders past and present.

Southern believes artificial intelligence should help preserve and strengthen languages and cultural heritage, not appropriate, replace or misrepresent them.

Cultural knowledge, Indigenous languages, stories, artwork and traditional knowledge must not be treated as freely available training material merely because they may be found online.

Their use must be governed through appropriate authority, provenance, consent and community participation.

This dedication does not claim endorsement by any Aboriginal or Torres Strait Islander community or organisation.
'@

"GOVERNANCE.md" = @'
# Governance

## Founding governance

Southern is currently governed by its founder, **Manish Mathew**, while the project establishes its initial technical, legal and community structures.

## Governance principles

Southern governance will be:

- Transparent
- Accountable
- Open to contribution
- Security conscious
- Respectful of cultural authority
- Based on documented decisions

## Decision process

Major decisions affecting governance, licensing, model releases, security, datasets or cultural materials must be documented publicly.

## Future structure

Southern intends to establish:

- Maintainers
- Technical steering groups
- Security reviewers
- Research reviewers
- Data governance representatives
- Community representatives
'@

"ROADMAP.md" = @'
# Southern Roadmap

## Phase 1 — Foundation

- Charter
- Governance
- Security policy
- Contribution standards
- Repository protection
- Public documentation

## Phase 2 — Southern Benchmark

- Australian knowledge benchmark
- Australian English benchmark
- Coding benchmark
- Safety benchmark
- Model comparison framework

## Phase 3 — Southern Arena

- Multi-model execution
- Kimi support
- Qwen support
- DeepSeek support
- Additional open-model support
- Automated evaluation

## Phase 4 — Southern Models

- Southern Code
- Southern Language
- Southern Voice
- Southern Vision
- Southern Foundation Model research

## Phase 5 — Research and Infrastructure

- Australian-hosted inference
- Training infrastructure
- Open research publications
- University and industry partnerships
'@

"SECURITY.md" = @'
# Security Policy

## Reporting vulnerabilities

Do not publicly disclose suspected security vulnerabilities.

Until a dedicated security address is established, open a GitHub issue without sensitive technical details and request a private reporting channel.

## Security principles

Southern uses:

- Protected main branches
- Pull request review
- Secret scanning
- Dependency scanning
- Static analysis
- Isolated development environments
- Least-privilege credentials
- No direct AI-agent access to production

## AI-generated code

AI-generated code must be:

- Reviewed
- Tested
- Scanned
- Attributed where legally required
- Approved by an authorised maintainer before merge
'@

"CONTRIBUTING.md" = @'
# Contributing to Southern

Thank you for contributing to Southern.

## Contribution process

1. Open or select an issue.
2. Create a feature branch.
3. Make focused changes.
4. Add or update tests.
5. Run security and quality checks.
6. Open a pull request.
7. Respond to review feedback.

## Branch naming

Examples:

- feature/southern-benchmark
- fix/security-validation
- docs/governance-update

## Requirements

Contributions must:

- Respect applicable licences.
- Avoid secrets and personal information.
- Include provenance for datasets.
- Respect cultural and Indigenous data governance.
- Avoid claiming endorsement by communities or organisations.
'@

"CODE_OF_CONDUCT.md" = @'
# Code of Conduct

Southern is committed to a respectful, professional and inclusive community.

Participants must:

- Communicate respectfully.
- Avoid harassment and discrimination.
- Respect cultural authority.
- Give accurate technical and intellectual attribution.
- Protect privacy and confidential information.
- Engage constructively in technical disagreement.

Serious or repeated breaches may result in removal from the project.
'@

"MODEL_POLICY.md" = @'
# Model Policy

Southern may evaluate and use eligible open-weight and open-source models.

Every model must have a documented record containing:

- Model name
- Publisher
- Version
- Licence
- Commercial-use rights
- Redistribution rights
- Derivative-model rights
- Attribution requirements
- Known safety limitations
- Hosting location
- Data-handling implications

No upstream model may be presented as having been created entirely by Southern.

Southern products may use Southern branding while preserving all legally required upstream notices and attribution.
'@

"DATA_POLICY.md" = @'
# Data Policy

Southern will maintain clear provenance and licensing information for training, evaluation and research data.

## Required records

Each dataset must document:

- Source
- Licence
- Collection method
- Date collected
- Permitted uses
- Personal-information risk
- Cultural sensitivity
- Review status

## Restricted material

Do not include:

- Private customer information
- Credentials or secrets
- Unauthorised personal information
- Confidential commercial data
- Cultural or traditional knowledge without appropriate authority
- Copyrighted material without a lawful basis
'@

"NOTICE" = @'
Southern
Australia's Open Artificial Intelligence Research Initiative

Founded by Manish Mathew in Australia, 2026.

Third-party software, models, datasets and other components remain subject to their respective licences and attribution requirements.
'@

".gitignore" = @'
.env
.env.*
!.env.example
__pycache__/
*.pyc
node_modules/
dist/
build/
coverage/
.venv/
venv/
.idea/
.vscode/
*.log
secrets/
credentials/
models/cache/
datasets/private/
'@

".github\pull_request_template.md" = @'
## Summary

Describe the change.

## Related issue

Closes #

## Testing

Describe tests completed.

## Security

- [ ] No secrets included
- [ ] Dependencies reviewed
- [ ] Security impact considered

## Licensing and provenance

- [ ] No incompatible third-party material
- [ ] Required attribution included
- [ ] Dataset or model provenance documented

## Cultural and data governance

- [ ] No restricted cultural material included
- [ ] No private or personal data included
'@

".github\ISSUE_TEMPLATE\feature_request.md" = @'
---
name: Feature request
about: Propose a new Southern feature
title: "[Feature] "
labels: enhancement
---

## Problem

Describe the problem.

## Proposed solution

Describe the proposed solution.

## Alternatives

Describe alternatives considered.

## Security, licensing or data concerns

List any relevant concerns.
'@

".github\ISSUE_TEMPLATE\bug_report.md" = @'
---
name: Bug report
about: Report a reproducible issue
title: "[Bug] "
labels: bug
---

## Description

Describe the issue.

## Steps to reproduce

1.
2.
3.

## Expected behaviour

Describe the expected result.

## Environment

Provide relevant versions and platform details.
'@

".github\CODEOWNERS" = @'
* @manish3m-beep

/CHARTER.md @manish3m-beep
/DEDICATION.md @manish3m-beep
/GOVERNANCE.md @manish3m-beep
/LICENSE @manish3m-beep
/NOTICE @manish3m-beep
/SECURITY.md @manish3m-beep
/.github/workflows/ @manish3m-beep
/models/ @manish3m-beep
/datasets/ @manish3m-beep
/training/ @manish3m-beep
'@

"docs\architecture.md" = @'
# Southern Architecture

Southern will use a model-neutral architecture.

## Initial components

- Southern API
- Southern Router
- Southern Arena
- Southern Benchmark
- Southern Evaluator
- Model connectors
- Security and policy layer
- Audit and provenance layer

## Supported model families

Initial research targets may include:

- Kimi
- Qwen
- DeepSeek
- Llama
- Mistral
- Other eligible open models

The architecture must avoid permanent dependency on a single model provider.
'@

"benchmark\README.md" = @'
# Southern Benchmark

Southern Benchmark will evaluate models against Australian and international tasks.

Initial categories:

- Australian knowledge
- Australian English
- Coding
- Reasoning
- Safety
- Hallucination resistance
- Cultural respect
- Privacy
- Security
'@

"models\README.md" = @'
# Southern Models

This directory will contain model cards, adapters, configuration and release records.

Model weights must not be committed directly to Git without an approved storage and release process.
'@

"datasets\README.md" = @'
# Southern Datasets

Datasets must include:

- Provenance
- Licence
- Permitted use
- Review status
- Privacy assessment
- Cultural sensitivity assessment
'@

"research\README.md" = @'
# Southern Research

Southern Research will publish technical reports, experiments, benchmark findings and reproducibility materials.
'@

"training\README.md" = @'
# Southern Training

Training code must be reproducible, secure and licence-aware.

Training runs should record:

- Base model
- Dataset versions
- Configuration
- Compute
- Checkpoints
- Evaluation results
- Licence obligations
'@

"api\README.md" = @'
# Southern API

Southern API will provide a model-neutral interface to Southern and supported upstream models.
'@

"studio\README.md" = @'
# Southern Studio

Southern Studio will provide a public interface for interacting with Southern models, benchmarks and research systems.
'@

"community\README.md" = @'
# Southern Community

Southern welcomes researchers, engineers, linguists, educators, students, security specialists and community representatives.
'@
}

foreach ($path in $files.Keys) {
    $directory = Split-Path $path -Parent

    if ($directory -and -not (Test-Path $directory)) {
        New-Item -ItemType Directory -Path $directory -Force | Out-Null
    }

    Set-Content -Path $path -Value $files[$path] -Encoding UTF8
    Write-Host "Created $path"
}

Write-Host ""
Write-Host "Southern structure created successfully." -ForegroundColor Green
Write-Host "Review the files before committing." -ForegroundColor Yellow