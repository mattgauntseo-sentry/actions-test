{ time sleep 1 ; } 2> time.txt && git commit -a -m "Commit 1" && git push -u origin HEAD
echo "Sleeping for 5s"
sleep 5
echo "Posting new update that should be skipped"
{ time sleep 1 ; } 2> time.txt && git commit -a -m "Commit 2" && git push -u origin HEAD
echo "Sleeping for 60s"
sleep 60
echo "Posting new update that should causing cancellation"
{ time sleep 1 ; } 2> time.txt && git commit -a -m "Commit 3" && git push -u origin HEAD
