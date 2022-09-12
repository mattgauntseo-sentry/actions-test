{ time sleep 1 ; } 2> time.txt && git commit -a -m "Step 1: This should be skipped due to step 2" && git push -u origin HEAD
echo "Sleeping for 5s"
sleep 5
echo "Posting new update that should be skipped"
{ time sleep 1 ; } 2> time.txt && git commit -a -m "Step 2: This should be cancelled" && git push -u origin HEAD
echo "Sleeping for 60s"
sleep 60
echo "Posting new update that should causing cancellation"
{ time sleep 1 ; } 2> time.txt && git commit -a -m "Step 3: This should cancel step 2" && git push -u origin HEAD
