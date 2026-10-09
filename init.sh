#!/bin/bash
set -e

echo "=== Pen Dev Design Harness Verification ==="

# 1. Check Pen CLI tool availability
echo "Checking Pen Dev CLI tooling..."
if command -v pencil >/dev/null 2>&1; then
    PEN_BIN="pencil"
    echo "  ✓ Found pencil CLI ($($PEN_BIN --version 2>/dev/null || echo 'ready'))"
elif command -v pen >/dev/null 2>&1; then
    PEN_BIN="pen"
    echo "  ✓ Found pen CLI ($($PEN_BIN --version 2>/dev/null || echo 'ready'))"
else
    echo "  ⚠️ Warning: Neither 'pen' nor 'pencil' CLI was found in PATH."
    echo "    Install via: npm i -g @pen.dev/cli"
fi

# 2. Check Pen Desktop App availability
if [ -d "/Applications/Pen.app" ]; then
    echo "  ✓ Found /Applications/Pen.app"
else
    echo "  ℹ️ Pen.app desktop client not in /Applications (using CLI/MCP mode)"
fi

# 3. Check Canvas Files Integrity
echo "Verifying canvas files in designs/..."
if [ ! -f "designs/app.pen" ]; then
    echo "  ❌ ERROR: designs/app.pen missing!"
    exit 1
fi

if [ ! -f "designs/design-system.pen" ]; then
    echo "  ❌ ERROR: designs/design-system.pen missing!"
    exit 1
fi

APP_SIZE=$(wc -c < "designs/app.pen" | tr -d ' ')
DS_SIZE=$(wc -c < "designs/design-system.pen" | tr -d ' ')

if [ "$APP_SIZE" -lt 50 ]; then
    echo "  ❌ ERROR: designs/app.pen appears empty or corrupted ($APP_SIZE bytes)."
    exit 1
fi

if [ "$DS_SIZE" -lt 50 ]; then
    echo "  ❌ ERROR: designs/design-system.pen appears empty or corrupted ($DS_SIZE bytes)."
    exit 1
fi

echo "  ✓ designs/app.pen ($APP_SIZE bytes) is intact."
echo "  ✓ designs/design-system.pen ($DS_SIZE bytes) is intact."

# 4. Check Design Backlog Status
if [ -f "feature_list.json" ]; then
    echo ""
    echo "📋 Active Feature Status (feature_list.json):"
    ACTIVE_FEATURE=$(node -e '
      try {
        const data = require("./feature_list.json");
        const active = data.features.find(f => f.status === "in-progress") || data.features.find(f => f.status === "not-started");
        if (active) {
          console.log(`  Target: [${active.id}] ${active.name} (${active.status})`);
        } else {
          console.log("  All features completed!");
        }
      } catch(e) {
        console.log("  Could not parse feature_list.json");
      }
    ' 2>/dev/null || echo "  feature_list.json ready")
    echo "$ACTIVE_FEATURE"
fi

echo ""
echo "=== Verification Complete: Design Environment Healthy ==="
echo ""
echo "Next steps:"
echo "1. Read AGENTS.md (Canvas rules and execution invariants)"
echo "2. Read feature_list.json and progress.md"
echo "3. Design the active flow/component in designs/app.pen or designs/design-system.pen"
echo "4. Export previews via bash scripts/export-previews.sh before opening PR"
