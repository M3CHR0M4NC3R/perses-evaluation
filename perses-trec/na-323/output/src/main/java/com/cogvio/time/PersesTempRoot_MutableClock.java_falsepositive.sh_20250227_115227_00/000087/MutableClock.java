package
com
.
cogvio
.
time
;
import
java
.
time
.
Clock
;
import
java
.
time
.
Instant
;
import
java
.
time
.
ZoneId
;
public
final
class
MutableClock
extends
Clock
{
private
Instant
instant
;
private
ZoneId
zone
;
private
MutableClock
(
)
{
}
public
void
setInstant
(
)
{
}
public
void
setZone
(
)
{
}
public
ZoneId
getZone
(
)
{
return
zone
;
}
@
Override
public
MutableClock
withZone
(
final
ZoneId
newZone
)
{
return
this
;
}
@
Override
public
Instant
instant
(
)
{
return
instant
;
}
}
