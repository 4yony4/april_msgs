std_msgs/Header header
uint32 object_id
time timestamp          # Time of inspection
bool result             # True means component is OK
string msg              # Error message (when result is set to False)
