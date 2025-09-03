for family in serif sans-serif monospace; do
  echo -n "$family: "
  fc-match "$family"
done
