source "$SCRIPTS/common.sh"
lsb

# Remove my, now disabled, Java PPA.
if [ -e /etc/apt/sources.list.d/flexiondotorg-java-${LSB_CODE}.list ]; then
    ncecho " [x] Removing ppa:flexiondotorg/java "
    rm -v /etc/apt/sources.list.d/flexiondotorg-java-${LSB_CODE}.list* >> "$LOG" 2>&1
    cecho success
fi
