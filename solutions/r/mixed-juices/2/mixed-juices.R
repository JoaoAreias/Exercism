time_to_mix_juice <- function(juice) {
  switch(
    juice,
    "Pure Strawberry Joy" = 0.5,
    "Green Garden" = 1.5, 
    "Energizer" = 1.5,
    "Tropical Island" = 3.0,
    "All or Nothing" = 5.0,
    2.5
  )  
}

limes_to_cut <- function(needed, limes) {
  if (needed <= 0) return(0);
  lime_to_wedges = list(small=4, medium=8, large=10);
  n = 0;
  for (lime in limes) {
    needed = needed - lime_to_wedges[[lime]];
    n = n + 1;
    if (needed <= 0) break;
  }
  n
}

order_times <- function(orders) {
  for (order in orders) {
    print(time_to_mix_juice(order))
  }
}

remaining_orders <- function(time_left, orders) {
  for (i in seq_along(orders)) {
    prep_time <- time_to_mix_juice(orders[i]);
    if (time_left <= 0) return(orders[i:length(orders)]);
    time_left = time_left - prep_time;
  }
  c()
}
