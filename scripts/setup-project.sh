#!/usr/bin/env bash
# Project initialization wizard for pen-dev-designer template
set -e

echo "🎨 Starting Pen Dev Design Project Initialization..."

PROJECT_NAME=""
PLATFORM="Mobile iOS & Web"
ARCHETYPE="Blueprint Technical"

# Parse CLI arguments if provided
while [[ "$#" -gt 0 ]]; do
    case $1 in
        --name) PROJECT_NAME="$2"; shift ;;
        --platform) PLATFORM="$2"; shift ;;
        --archetype) ARCHETYPE="$2"; shift ;;
        --test) TEST_MODE="true" ;;
        *) echo "Unknown parameter: $1"; exit 1 ;;
    esac
    shift
done

if [ "$TEST_MODE" = "true" ]; then
    echo "Running in non-interactive test mode..."
    PROJECT_NAME="${PROJECT_NAME:-VoltPay Fintech}"
fi

# Interactive prompts if not specified
if [ -z "$PROJECT_NAME" ]; then
    read -rp "Enter your project name [My Design Project]: " INPUT_NAME
    PROJECT_NAME="${INPUT_NAME:-My Design Project}"
fi

echo ""
echo "🚀 Configuring project: '$PROJECT_NAME' ($PLATFORM, Archetype: $ARCHETYPE)..."

# 1. Update GLOSSARY.md placeholders
if [ -f "GLOSSARY.md" ]; then
    echo "  ✓ Updating GLOSSARY.md..."
    sed -i '' "s/\[Your Design Project Name\]/$PROJECT_NAME/g" GLOSSARY.md 2>/dev/null || sed -i "s/\[Your Design Project Name\]/$PROJECT_NAME/g" GLOSSARY.md
    sed -i '' "s/\[Target Platform\]/$PLATFORM/g" GLOSSARY.md 2>/dev/null || sed -i "s/\[Target Platform\]/$PLATFORM/g" GLOSSARY.md
    sed -i '' "s/\[Blueprint Technical.*\]/$ARCHETYPE/g" GLOSSARY.md 2>/dev/null || sed -i "s/\[Blueprint Technical.*\]/$ARCHETYPE/g" GLOSSARY.md
fi

# 2. Update DESIGN.md placeholders
if [ -f "docs/design-system/DESIGN.md" ]; then
    echo "  ✓ Updating docs/design-system/DESIGN.md..."
    sed -i '' "s/\[Blueprint Technical.*\]/$ARCHETYPE/g" docs/design-system/DESIGN.md 2>/dev/null || sed -i "s/\[Blueprint Technical.*\]/$ARCHETYPE/g" docs/design-system/DESIGN.md
fi

# 3. Ensure design directories exist
mkdir -p designs docs/previews docs/planning/archive

# 4. Update feature_list.json feat-001 status to completed
if [ -f "feature_list.json" ]; then
    node -e '
      try {
        const fs = require("fs");
        const file = "./feature_list.json";
        const data = JSON.parse(fs.readFileSync(file, "utf8"));
        const f1 = data.features.find(f => f.id === "feat-001");
        if (f1) {
          f1.status = "completed";
          f1.evidence = "Initialized via setup-project.sh";
        }
        fs.writeFileSync(file, JSON.stringify(data, null, 2));
        console.log("  ✓ Updated feat-001 status in feature_list.json to completed");
      } catch(e) {}
    ' 2>/dev/null || true
fi

echo ""
echo "✅ Project setup complete! Next steps:"
echo "1. Run './init.sh' to verify your canvas environment"
echo "2. Ask the agent: 'Scope our first user flow using /product-function'"
