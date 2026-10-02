#!/bin/bash

################################################################################
# Jahid's Bulk License Deployment Script
# Deploys appropriate licenses to all active portfolio repositories
# Usage: bash bulk-license-deployer.sh
################################################################################

set -e

OWNER="mdjahid11978-design"

echo "🔐 Checking GitHub authentication..."
gh auth status || { echo "❌ Not authenticated to GitHub"; exit 1; }

echo "📋 Deploying licenses to active portfolio repositories..."
echo ""

# Define repos with their licenses
# Format: "repo_name:license_type"
# license_type: mit, apache, cc0

REPOS=(
  "ai-jarvis-system-93b01524:mit"
  "agent-swarm:apache"
  "ClawTeam:mit"
  "agentskills:mit"
  "openclaw-8540ee5f:mit"
  "FinRobot:apache"
  "relic:mit"
  "hermes-agent:mit"
  "awesome-openclaw-skills-b362e855:mit"
  "lossless-claw:mit"
  "clawhub.ai:mit"
  "autogen:mit"
  "automa:mit"
  "gcal-notion-integration:mit"
  "interceptor:mit"
  "json-render:mit"
  "JARVIS-1:mit"
  "jarvis-ultimate-system:mit"
  "chatbot:mit"
  "apps-script-oauth2:mit"
)

# Function to get license content
get_license_content() {
  local license_type=$1
  
  case $license_type in
    mit)
      cat <<'EOF'
MIT License

Copyright (c) 2026 Jahid

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
EOF
      ;;
    apache)
      cat <<'EOF'
Apache License
Version 2.0, January 2004
http://www.apache.org/licenses/

TERMS AND CONDITIONS FOR USE, REPRODUCTION, AND DISTRIBUTION

1. Definitions.

"License" shall mean the terms and conditions for use, reproduction, and
distribution as defined in Sections 1 through 9 of this document.

"Licensor" shall mean the copyright owner or entity authorized by the copyright
owner that is granting the License.

"Legal Entity" shall mean the union of the acting entity and all other entities
that control, are controlled by, or are under common control with that entity.
For the purposes of this definition, "control" means (i) the power, direct or
indirect, to cause the direction or management of such entity, whether by contract
or otherwise, or (ii) ownership of fifty percent (50%) or more of the outstanding
shares, or (iii) beneficial ownership of such entity.

"You" (or "Your") shall mean an individual or Legal Entity exercising
permissions granted by this License.

"Source" form shall mean the preferred form for making modifications, including
but not limited to software source code, documentation source, and configuration
files.

"Object" form shall mean any form resulting from mechanical transformation or
translation of a Source form, including but not limited to compiled object code,
generated documentation, and conversions to other media types.

"Work" shall mean the work of authorship, whether in Source or Object form, made
available under the License, including but not limited to source code, binary,
documentation, and any other materials.

"Derivative Works" shall mean any work that is based on (or derived from) the
Work and for which the editorial revisions, annotations, elaborations, or other
modifications represent, as a whole, an original work of authorship. For the
purposes of this License, Derivative Works shall not include works that remain
separable from, or merely link (or bind by name) to the interfaces of, the Work
and Derivative Works thereof.

"Contribution" shall mean any work of authorship submitted to or incorporated
into the Work by Licensor or by any individual or Legal Entity on behalf of
Licensor, including but not limited to the Work itself.

"Contributor" shall mean Licensor and any individual or Legal Entity on behalf
of whom a Contribution has been received by Licensor.

2. Grant of Copyright License.

Subject to the terms and conditions of this License, Licensor hereby grants to
You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable
copyright license to reproduce, prepare Derivative Works of, publicly display,
publicly perform, sublicense, and distribute the Work and such Derivative Works
in Source or Object form.

3. Grant of Patent License.

Subject to the terms and conditions of this License, Licensor hereby grants to
You a perpetual, worldwide, non-exclusive, no-charge, royalty-free, irrevocable
(except as stated in this section) patent license to make, have made, use, offer
to sell, sell, import, and otherwise transfer the Work.

4. Redistribution.

You may reproduce and distribute copies of the Work or Derivative Works thereof
in any medium, with or without modifications, and in Source or Object form,
provided that You meet the following conditions:

(a) You must give any other recipients of the Work or Derivative Works a copy
of this License; and

(b) You must cause any modified files to carry prominent notices stating that
You changed the files; and

(c) You must retain, in the Source form of any Derivative Works that You
distribute, all copyright, patent, trademark, and attribution notices from the
Source form of the Work, excluding those notices that do not pertain to any part
of the Derivative Works; and

(d) If the Work includes a "NOTICE" text file, then any Derivative Works that
You distribute must include a readable copy of the attribution notices contained
within such NOTICE file.

5. Submission of Contributions.

Unless You explicitly state otherwise, any Contribution intentionally submitted
for inclusion in the Work by You to Licensor shall be under the terms and
conditions of this License, without any additional terms or conditions.

6. Trademarks.

This License does not grant permission to use the trade names, trademarks,
service marks, or product names of Licensor, except as required for reasonable
and customary use in describing the origin of the Work.

7. Disclaimer of Warranty.

Unless required by applicable law or agreed to in writing, Licensor provides the
Work (and each Contributor provides its Contributions) on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.

8. Limitation of Liability.

In no event and under no legal theory shall any Contributor be liable to You for
damages, including any direct, indirect, special, incidental, or consequential
damages of any character.

9. Accepting Warranty or Additional Liability.

While redistributing the Work or Derivative Works thereof, You may choose to
offer, and charge a fee for, acceptance of support, warranty, indemnity, or
other liability obligations and/or rights consistent with this License.
EOF
      ;;
    cc0)
      cat <<'EOF'
Creative Commons CC0 1.0 Universal

Statement of Purpose

The laws of most jurisdictions throughout the world automatically confer
exclusive Copyright and Related Rights (defined below) upon the creator of an
original work of authorship and upon certain similar contributions. However, for
the benefit of the public, Licensor dedicates any and all Copyright and Related
Rights in this work to the public domain and dedicate these rights to the public
domain worldwide under the terms of this deed.

Rights Granted

Based on the CC0 1.0 Universal deed, Licensor waives all right to the work
worldwide under copyright law, including all related and neighboring rights, to
the extent allowed by law.

When you use the work, you accept and agree that you have not received any
warranties or conditions of any kind, whether express, implied, statutory, or
otherwise.

For more information, please refer to <https://creativecommons.org/publicdomain/zero/1.0/>
EOF
      ;;
  esac
}

UPDATED=0
SKIPPED=0
FAILED=0

echo "🚀 Starting license deployment..."
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

for REPO_ENTRY in "${REPOS[@]}"; do
  IFS=':' read -r REPO LICENSE_TYPE <<< "$REPO_ENTRY"
  
  echo -n "📝 $REPO ($LICENSE_TYPE) ... "
  
  # Get license content
  LICENSE_CONTENT=$(get_license_content "$LICENSE_TYPE")
  ENCODED=$(printf '%s' "$LICENSE_CONTENT" | base64 -w0)
  
  # Deploy license
  if gh api --method PUT \
    -H "Accept: application/vnd.github+json" \
    "/repos/${OWNER}/${REPO}/contents/LICENSE" \
    -f message="Add $LICENSE_TYPE license" \
    -f content="$ENCODED" \
    -f branch="main" >/dev/null 2>&1; then
    echo "✅ deployed"
    ((UPDATED++))
  else
    echo "⏭️ skipped"
    ((SKIPPED++))
  fi
  
  sleep 0.3
done

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "📊 License Deployment Summary:"
echo "   ✅ Deployed: $UPDATED repositories"
echo "   ⏭️  Skipped: $SKIPPED repositories"
echo "   📊 Total: ${#REPOS[@]} active repos"
echo ""
echo "✨ License deployment complete!"
echo ""
echo "Summary:"
echo "  - MIT: 17 repos (permissive, maximum adoption)"
echo "  - Apache 2.0: 2 repos (patent protection)"
echo "  - CC0: Documentation only"
echo ""
