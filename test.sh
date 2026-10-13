
#!/bin/bash

set -e

echo "Starting website tests..."

test -f index.html
test -f app/app.js
test -f app/style.css

grep -q "Welcome to My Website!" index.html
grep -q "function showMessage" app/app.js

echo "All tests passed successfully!"
