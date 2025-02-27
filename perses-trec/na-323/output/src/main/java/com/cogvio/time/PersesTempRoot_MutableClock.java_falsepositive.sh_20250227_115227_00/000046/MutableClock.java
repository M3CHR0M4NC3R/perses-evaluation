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
import
java
.
util
.
*
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
final
Instant
instant
,
final
ZoneId
zone
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
this
.
zone
=
Objects
.
requireNonNull
(
zone
,
"zone must not be null"
)
;
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
