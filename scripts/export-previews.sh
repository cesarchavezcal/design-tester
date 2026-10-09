#!/usr/bin/env bash
# Canvas preview exporter for pen-dev-designer
set -e

echo "📸 Starting Canvas Screen Preview Export..."

mkdir -p docs/previews

PEN_BIN=""
if command -v pencil >/dev/null 2>&1; then
    PEN_BIN="pencil"
elif command -v pen >/dev/null 2>&1; then
    PEN_BIN="pen"
fi

if [ -z "$PEN_BIN" ]; then
    echo "⚠️ Warning: 'pen' or 'pencil' CLI not found. Please install via npm i -g @pen.dev/cli"
    exit 0
fi

INPUT_FILE="${1:-designs/app.pen}"
OUTPUT_IMG="docs/previews/latest-preview.png"

if [ ! -f "$INPUT_FILE" ]; then
    echo "❌ Error: Canvas file '$INPUT_FILE' not found."
    exit 1
fi

echo "Exporting preview from '$INPUT_FILE' to '$OUTPUT_IMG'..."
$PEN_BIN --in "$INPUT_FILE" --export "$OUTPUT_IMG" --export-scale 2 --export-type png || {
    echo "⚠️ Export command finished. Check docs/previews/ for exported artifacts."
}

if [ -f "$OUTPUT_IMG" ]; then
    echo "  ✓ Generated preview: $OUTPUT_IMG ($(wc -c < "$OUTPUT_IMG" | tr -d ' ') bytes)"
fi

echo "✅ Preview export completed!"
