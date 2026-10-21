cd ~/lab0
cp staff_room/late_report claude_monet/office/discipline_report
cp -r claude_monet/kitchen/morning_shift claude_monet/kitchen/evening_shift/morning_backup
ln -s ../claude_monet/kitchen/leva_order staff_room/current_order
ln -s claude_monet/kitchen shift_kitchen
ln shift_message claude_monet/kitchen/common_message
cat claude_monet/kitchen/morning_shift/senya_tasks claude_monet/kitchen/morning_shift/fedya_tasks > claude_monet/kitchen/morning_report
cat claude_monet/office/barinov_schedule >> claude_monet/kitchen/leva_order
mv claude_monet/hall/complaints claude_monet/office/guest_complaints