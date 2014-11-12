//Handle Network Messages
var buffer = argument0, buffer_size = argument1, msgid = argument2;

switch(msgid)
{
    case msg_queue:
        client_id = Net_Requeue(buffer,msg_queue);
        break;
    case msg_chat:
        var sender = buffer_read(buffer,buffer_string);
        var message = buffer_read(buffer,buffer_string);
        show_message(sender + ": " + message);
        break;
}
