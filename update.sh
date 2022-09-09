{ time sleep 1 ; } 2> time.txt && git commit -a -m "Update to test actions" && git push @{upstream}
echo "Sleeping for 10s"
sleep 10
echo "Posting new update"
{ time sleep 1 ; } 2> time.txt && git commit -a -m "Update to test actions" && git push @{upstream}
