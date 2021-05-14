awk '{print $1,$2,$3,$4}' 0310_Dealer_schedule | grep -i '02:00:00 PM' 0310_Dealer_schedule >> Dealers_working_during_losses
awk '{print $1,$2,$3,$4}' 0310_Dealer_schedule | grep -i '08:00:00 PM' 0310_Dealer_schedule >> Dealers_working_during_losses
awk '{print $1,$2,$3,$4}' 0310_Dealer_schedule | grep -i '11:00:00 PM' 0310_Dealer_schedule >> Dealers_working_during_losses

