#!/bin/sh
# Universal Hive — Site.pro Builder (iSH full local setup)
# Paste this entire file into iSH, save as hive.sh, then: sh hive.sh

echo "🐝 Universal Hive — starting local setup..."

# --- API call ---
API="https://site.pro/api/requestLogin"
USER="apikey0"
PASS="YEaCqH/fxPI0HnImDtVJm0xOi2R9IY8ICqlHwg80LlUsjZjS"

DOMAIN="krackerjackai.site.pro"
IP="66.228.61.140"
SSH_USER="KRACKERJACK1134"
SSH_PASS="NoPassword1134"
DIR="/home/KRACKERJACK1134/domains/krackerjackai.site.pro/public_html"

BODY='{"type":"ssh","domain":"'"$DOMAIN"'","apiUrl":"'"$IP"'","username":"'"$SSH_USER"'","password":"'"$SSH_PASS"'","uploadDir":"'"$DIR"'","lang":"en","more":true}'

echo "Calling Site.pro API..."
RESP=$(curl -s -X POST "$API" -u "$USER:$PASS" -H "Content-Type: application/json" -d "$BODY")

URL=$(printf '%s' "$RESP" | sed -n 's/.*"url":"\([^"]*\)".*/\1/p' | sed 's/\\//g')

if [ -z "$URL" ]; then
  echo "❌ API failed. Response:"
  echo "$RESP"
  exit 1
fi

echo "✅ Got builder URL"
echo "$URL"
echo ""

# --- Create themed HTML launcher ---
OUT="$HOME/hive-builder.html"
echo "Creating $OUT ..."

cat > "$OUT" << EOF
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>THE UNIVERSAL HIVE</title>
<style>
*{box-sizing:border-box;margin:0;padding:0}
body{background:#0c0d0b;color:#eeeee6;font-family:system-ui,sans-serif;min-height:100vh;display:flex;align-items:center;justify-content:center;padding:1.5rem}
.card{background:#111;border:1px solid #8fa87a;border-radius:14px;padding:2.5rem 2rem;max-width:420px;width:100%;text-align:center;box-shadow:0 0 48px rgba(143,168,122,.18)}
h1{color:#8fa87a;font-size:1.6rem;letter-spacing:.08em;margin-bottom:.4rem}
.sub{color:#8fa87a;opacity:.65;font-size:.85rem;margin-bottom:2rem}
.btn{display:inline-block;background:#8fa87a;color:#0c0d0b;font-weight:800;padding:1rem 2.2rem;border-radius:10px;text-decoration:none;font-size:1.05rem}
.btn:active{transform:scale(.97)}
.meta{margin-top:1.6rem;font-size:.7rem;color:#8fa87a;opacity:.45}
</style>
</head>
<body>
<div class="card">
  <h1>THE UNIVERSAL HIVE</h1>
  <p class="sub">Site.pro Builder</p>
  <a class="btn" href="$URL">OPEN BUILDER</a>
  <p class="meta">Ink · Moss · Paper · Prime Directive</p>
</div>
</body>
</html>
EOF

echo "✅ HTML saved to $OUT"
echo ""
echo "Done. Open $OUT in a browser or go to:"
echo "$URL"
