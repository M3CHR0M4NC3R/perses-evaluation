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
final
Instant
instant
)
{
}
public
void
setZone
(
final
ZoneId
zone
)
{
}
@
Override
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
