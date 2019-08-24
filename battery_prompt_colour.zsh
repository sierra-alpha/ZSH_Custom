# Currently only works this version works for windows 10

# A function to put out certain colours depending on battery percentage
function battery_prompt_colour() {
#    local percent colour
#    percent=$(powershell.exe WMIC PATH Win32_Battery Get EstimatedChargeRemaining | grep -o '[0-9]*')
 #   if [[ $percent -gt "90" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_90_to_100
  #  elif [[ $percent -gt "70" ]]; then
   #     colour=$ZSH_THEME_BATTERY_COLOUR_70_to_90
#    elif [[ $percent -gt "50" ]]; then
 #       colour=$ZSH_THEME_BATTERY_COLOUR_50_to_70
  #  elif [[ $percent -gt "30" ]]; then
   #     colour=$ZSH_THEME_BATTERY_COLOUR_30_to_50
#    elif [[ $percent -gt "10" ]]; then
 #       colour=$ZSH_THEME_BATTERY_COLOUR_10_to_30
  #  elif [[ $percent -gt "00" ]]; then
   #     colour=$ZSH_THEME_BATTERY_COLOUR_00_to_10
#    fi
    echo "$colour"
}
