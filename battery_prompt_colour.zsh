# Currently only works for mac only, change line 6 after 'percent=' to suit other OS

# A function to put out certain colours depending on battery percentage
function battery_prompt_colour() {
    local percent colour
    percent=$(pmset -g batt | grep -Eo "\d+%" | cut -d% -f1)
    if [[ percent -gt "90" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_90_to_100
    elif [[ percent -gt "70" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_70_to_90
    elif [[ percent -gt "50" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_50_to_70
    elif [[ percent -gt "30" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_30_to_50
    elif [[ percent -gt "10" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_10_to_30
    elif [[ percent -gt "00" ]]; then
        colour=$ZSH_THEME_BATTERY_COLOUR_00_to_10
    fi
    echo "$colour"
}