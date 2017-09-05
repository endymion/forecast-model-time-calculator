# Forecast Model Time Calculator

## Problem

The tropical cyclone forecast models published at places like [Tropical Tidbits](http://tropicaltidbits.com) have times expressed in hour offsets from the time that the model was initialized.  And the initialization time is in UTC.

It can be difficult to determine the local time for each frame in the forecast model.

## Solution

This simple calculator takes the model initialization time in UTC, the offset in hours, and the time zone.  It returns the local time for that frame in the forecast model.

## Example

If you're in Eastern Daylight Time and you're looking at a model that was initialized at 12z and you want to know the local time of the frame that shows 120 hours, then enter "12" for the initialization, "120" for the offset, and "EDT" for the time zone.  The calculator will return local time for that frame.

## Technology

This is a simple Ruby-based Sinatra app.
