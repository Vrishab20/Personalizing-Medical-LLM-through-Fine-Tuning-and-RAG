#!/bin/bash

echo "🔁 Starting auto commit script..."

cd /c/Users/ramas/Personalizing-Medical-LLM-through-Fine-Tuning-and-RAG || {
  echo "❌ Repo path incorrect"; exit 1;
}

echo "📁 Inside the repo."

if [[ -n $(git status -s) ]]; then
  git add .
  git commit -m "🤖 Auto commit on 2025-04-13 22:47:30"
  git push origin main
  echo "🚀 Changes pushed to GitHub!"
else
  echo "🟢 No changes to commit."
fi
