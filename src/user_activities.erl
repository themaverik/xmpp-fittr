%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(user_activities).

-compile(export_all).

do_decode(<<"query">>, <<"jabber:iq:user_activities">>,
          El, Opts) ->
    decode_user_activities(<<"jabber:iq:user_activities">>,
                           Opts,
                           El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"query">>, <<"jabber:iq:user_activities">>}].

do_encode({user_activities,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _} =
              Query,
          TopXMLNS) ->
    encode_user_activities(Query, TopXMLNS).

do_get_name({user_activities,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _,
             _}) ->
    <<"query">>.

do_get_ns({user_activities,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _,
           _}) ->
    <<"jabber:iq:user_activities">>.

get_els({user_activities,
         _remove_user,
         _type,
         _result_type,
         _status,
         _password,
         _socket_id,
         _message_from,
         _message_to,
         _to_user,
         _mode,
         _message_id,
         _message_ids,
         _chat_type,
         _reply_id,
         _delete_type,
         _favourite,
         _sub_els,
         _position,
         _limit,
         _page,
         _timestamp,
         _prefetch,
         _call_status,
         _call_type,
         _caller_device,
         _call_id,
         _call_attend_status,
         _has_more_message}) ->
    _sub_els.

set_els({user_activities,
         _remove_user,
         _type,
         _result_type,
         _status,
         _password,
         _socket_id,
         _message_from,
         _message_to,
         _to_user,
         _mode,
         _message_id,
         _message_ids,
         _chat_type,
         _reply_id,
         _delete_type,
         _favourite,
         _,
         _position,
         _limit,
         _page,
         _timestamp,
         _prefetch,
         _call_status,
         _call_type,
         _caller_device,
         _call_id,
         _call_attend_status,
         _has_more_message},
        _sub_els) ->
    {user_activities,
     _remove_user,
     _type,
     _result_type,
     _status,
     _password,
     _socket_id,
     _message_from,
     _message_to,
     _to_user,
     _mode,
     _message_id,
     _message_ids,
     _chat_type,
     _reply_id,
     _delete_type,
     _favourite,
     _sub_els,
     _position,
     _limit,
     _page,
     _timestamp,
     _prefetch,
     _call_status,
     _call_type,
     _caller_device,
     _call_id,
     _call_attend_status,
     _has_more_message}.

pp(user_activities, 28) ->
    [remove_user,
     type,
     result_type,
     status,
     password,
     socket_id,
     message_from,
     message_to,
     to_user,
     mode,
     message_id,
     message_ids,
     chat_type,
     reply_id,
     delete_type,
     favourite,
     sub_els,
     position,
     limit,
     page,
     timestamp,
     prefetch,
     call_status,
     call_type,
     caller_device,
     call_id,
     call_attend_status,
     has_more_message];
pp(_, _) -> no.

records() -> [{user_activities, 28}].

decode_user_activities(__TopXMLNS, __Opts,
                       {xmlel, <<"query">>, _attrs, _els}) ->
    {Result_type, __Els} =
        decode_user_activities_els(__TopXMLNS,
                                   __Opts,
                                   _els,
                                   <<>>,
                                   []),
    {Remove_user,
     Type,
     Message_from,
     Message_to,
     Message_id,
     Position,
     Prefetch,
     Limit,
     Page,
     Timestamp,
     Favourite,
     Delete_type,
     To_user,
     Mode,
     Chat_type,
     Reply_id,
     Call_status,
     Call_type,
     Caller_device,
     Call_id,
     Call_attend_status,
     Message_ids,
     Socket_id,
     Password,
     Status,
     Has_more_message} =
        decode_user_activities_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined,
                                     undefined),
    {user_activities,
     Remove_user,
     Type,
     Result_type,
     Status,
     Password,
     Socket_id,
     Message_from,
     Message_to,
     To_user,
     Mode,
     Message_id,
     Message_ids,
     Chat_type,
     Reply_id,
     Delete_type,
     Favourite,
     __Els,
     Position,
     Limit,
     Page,
     Timestamp,
     Prefetch,
     Call_status,
     Call_type,
     Caller_device,
     Call_id,
     Call_attend_status,
     Has_more_message}.

decode_user_activities_els(__TopXMLNS, __Opts, [],
                           Result_type, __Els) ->
    {decode_user_activities_cdata(__TopXMLNS, Result_type),
     lists:reverse(__Els)};
decode_user_activities_els(__TopXMLNS, __Opts,
                           [{xmlcdata, _data} | _els], Result_type, __Els) ->
    decode_user_activities_els(__TopXMLNS,
                               __Opts,
                               _els,
                               <<Result_type/binary, _data/binary>>,
                               __Els);
decode_user_activities_els(__TopXMLNS, __Opts,
                           [{xmlel, _name, _attrs, _} = _el | _els],
                           Result_type, __Els) ->
    case proplists:get_bool(ignore_els, __Opts) of
        true ->
            decode_user_activities_els(__TopXMLNS,
                                       __Opts,
                                       _els,
                                       Result_type,
                                       [_el | __Els]);
        false ->
            __XMLNS = xmpp_codec:get_attr(<<"xmlns">>,
                                          _attrs,
                                          __TopXMLNS),
            case xmpp_codec:get_mod(_name, __XMLNS) of
                undefined ->
                    decode_user_activities_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Result_type,
                                               [_el | __Els]);
                Mod ->
                    decode_user_activities_els(__TopXMLNS,
                                               __Opts,
                                               _els,
                                               Result_type,
                                               [Mod:do_decode(_name,
                                                              __XMLNS,
                                                              _el,
                                                              __Opts)
                                                | __Els])
            end
    end.

decode_user_activities_attrs(__TopXMLNS,
                             [{<<"remove_user">>, _val} | _attrs], _Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 _val,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"type">>, _val} | _attrs], Remove_user, _Type,
                             Message_from, Message_to, Message_id, Position,
                             Prefetch, Limit, Page, Timestamp, Favourite,
                             Delete_type, To_user, Mode, Chat_type, Reply_id,
                             Call_status, Call_type, Caller_device, Call_id,
                             Call_attend_status, Message_ids, Socket_id,
                             Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 _val,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"message_from">>, _val} | _attrs], Remove_user,
                             Type, _Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 _val,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"message_to">>, _val} | _attrs], Remove_user,
                             Type, Message_from, _Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 _val,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"message_id">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, _Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 _val,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"position">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             _Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 _val,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"prefetch">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, _Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 _val,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"limit">>, _val} | _attrs], Remove_user, Type,
                             Message_from, Message_to, Message_id, Position,
                             Prefetch, _Limit, Page, Timestamp, Favourite,
                             Delete_type, To_user, Mode, Chat_type, Reply_id,
                             Call_status, Call_type, Caller_device, Call_id,
                             Call_attend_status, Message_ids, Socket_id,
                             Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 _val,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"page">>, _val} | _attrs], Remove_user, Type,
                             Message_from, Message_to, Message_id, Position,
                             Prefetch, Limit, _Page, Timestamp, Favourite,
                             Delete_type, To_user, Mode, Chat_type, Reply_id,
                             Call_status, Call_type, Caller_device, Call_id,
                             Call_attend_status, Message_ids, Socket_id,
                             Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 _val,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"timestamp">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, _Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 _val,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"favourite">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             _Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 _val,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"delete_type">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, _Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 _val,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"to_user">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, _To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 _val,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"mode">>, _val} | _attrs], Remove_user, Type,
                             Message_from, Message_to, Message_id, Position,
                             Prefetch, Limit, Page, Timestamp, Favourite,
                             Delete_type, To_user, _Mode, Chat_type, Reply_id,
                             Call_status, Call_type, Caller_device, Call_id,
                             Call_attend_status, Message_ids, Socket_id,
                             Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 _val,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"chat_type">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, _Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 _val,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"reply_id">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             _Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 _val,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"call_status">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, _Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 _val,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"call_type">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, _Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 _val,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"caller_device">>, _val} | _attrs],
                             Remove_user, Type, Message_from, Message_to,
                             Message_id, Position, Prefetch, Limit, Page,
                             Timestamp, Favourite, Delete_type, To_user, Mode,
                             Chat_type, Reply_id, Call_status, Call_type,
                             _Caller_device, Call_id, Call_attend_status,
                             Message_ids, Socket_id, Password, Status,
                             Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 _val,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"call_id">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             _Call_id, Call_attend_status, Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 _val,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"call_attend_status">>, _val} | _attrs],
                             Remove_user, Type, Message_from, Message_to,
                             Message_id, Position, Prefetch, Limit, Page,
                             Timestamp, Favourite, Delete_type, To_user, Mode,
                             Chat_type, Reply_id, Call_status, Call_type,
                             Caller_device, Call_id, _Call_attend_status,
                             Message_ids, Socket_id, Password, Status,
                             Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 _val,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"message_ids">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, _Message_ids,
                             Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 _val,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"socket_id">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             _Socket_id, Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 _val,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"password">>, _val} | _attrs], Remove_user,
                             Type, Message_from, Message_to, Message_id,
                             Position, Prefetch, Limit, Page, Timestamp,
                             Favourite, Delete_type, To_user, Mode, Chat_type,
                             Reply_id, Call_status, Call_type, Caller_device,
                             Call_id, Call_attend_status, Message_ids,
                             Socket_id, _Password, Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 _val,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"status">>, _val} | _attrs], Remove_user, Type,
                             Message_from, Message_to, Message_id, Position,
                             Prefetch, Limit, Page, Timestamp, Favourite,
                             Delete_type, To_user, Mode, Chat_type, Reply_id,
                             Call_status, Call_type, Caller_device, Call_id,
                             Call_attend_status, Message_ids, Socket_id,
                             Password, _Status, Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 _val,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS,
                             [{<<"has_more_message">>, _val} | _attrs],
                             Remove_user, Type, Message_from, Message_to,
                             Message_id, Position, Prefetch, Limit, Page,
                             Timestamp, Favourite, Delete_type, To_user, Mode,
                             Chat_type, Reply_id, Call_status, Call_type,
                             Caller_device, Call_id, Call_attend_status,
                             Message_ids, Socket_id, Password, Status,
                             _Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 _val);
decode_user_activities_attrs(__TopXMLNS, [_ | _attrs],
                             Remove_user, Type, Message_from, Message_to,
                             Message_id, Position, Prefetch, Limit, Page,
                             Timestamp, Favourite, Delete_type, To_user, Mode,
                             Chat_type, Reply_id, Call_status, Call_type,
                             Caller_device, Call_id, Call_attend_status,
                             Message_ids, Socket_id, Password, Status,
                             Has_more_message) ->
    decode_user_activities_attrs(__TopXMLNS,
                                 _attrs,
                                 Remove_user,
                                 Type,
                                 Message_from,
                                 Message_to,
                                 Message_id,
                                 Position,
                                 Prefetch,
                                 Limit,
                                 Page,
                                 Timestamp,
                                 Favourite,
                                 Delete_type,
                                 To_user,
                                 Mode,
                                 Chat_type,
                                 Reply_id,
                                 Call_status,
                                 Call_type,
                                 Caller_device,
                                 Call_id,
                                 Call_attend_status,
                                 Message_ids,
                                 Socket_id,
                                 Password,
                                 Status,
                                 Has_more_message);
decode_user_activities_attrs(__TopXMLNS, [],
                             Remove_user, Type, Message_from, Message_to,
                             Message_id, Position, Prefetch, Limit, Page,
                             Timestamp, Favourite, Delete_type, To_user, Mode,
                             Chat_type, Reply_id, Call_status, Call_type,
                             Caller_device, Call_id, Call_attend_status,
                             Message_ids, Socket_id, Password, Status,
                             Has_more_message) ->
    {decode_user_activities_attr_remove_user(__TopXMLNS,
                                             Remove_user),
     decode_user_activities_attr_type(__TopXMLNS, Type),
     decode_user_activities_attr_message_from(__TopXMLNS,
                                              Message_from),
     decode_user_activities_attr_message_to(__TopXMLNS,
                                            Message_to),
     decode_user_activities_attr_message_id(__TopXMLNS,
                                            Message_id),
     decode_user_activities_attr_position(__TopXMLNS,
                                          Position),
     decode_user_activities_attr_prefetch(__TopXMLNS,
                                          Prefetch),
     decode_user_activities_attr_limit(__TopXMLNS, Limit),
     decode_user_activities_attr_page(__TopXMLNS, Page),
     decode_user_activities_attr_timestamp(__TopXMLNS,
                                           Timestamp),
     decode_user_activities_attr_favourite(__TopXMLNS,
                                           Favourite),
     decode_user_activities_attr_delete_type(__TopXMLNS,
                                             Delete_type),
     decode_user_activities_attr_to_user(__TopXMLNS,
                                         To_user),
     decode_user_activities_attr_mode(__TopXMLNS, Mode),
     decode_user_activities_attr_chat_type(__TopXMLNS,
                                           Chat_type),
     decode_user_activities_attr_reply_id(__TopXMLNS,
                                          Reply_id),
     decode_user_activities_attr_call_status(__TopXMLNS,
                                             Call_status),
     decode_user_activities_attr_call_type(__TopXMLNS,
                                           Call_type),
     decode_user_activities_attr_caller_device(__TopXMLNS,
                                               Caller_device),
     decode_user_activities_attr_call_id(__TopXMLNS,
                                         Call_id),
     decode_user_activities_attr_call_attend_status(__TopXMLNS,
                                                    Call_attend_status),
     decode_user_activities_attr_message_ids(__TopXMLNS,
                                             Message_ids),
     decode_user_activities_attr_socket_id(__TopXMLNS,
                                           Socket_id),
     decode_user_activities_attr_password(__TopXMLNS,
                                          Password),
     decode_user_activities_attr_status(__TopXMLNS, Status),
     decode_user_activities_attr_has_more_message(__TopXMLNS,
                                                  Has_more_message)}.

encode_user_activities({user_activities,
                        Remove_user,
                        Type,
                        Result_type,
                        Status,
                        Password,
                        Socket_id,
                        Message_from,
                        Message_to,
                        To_user,
                        Mode,
                        Message_id,
                        Message_ids,
                        Chat_type,
                        Reply_id,
                        Delete_type,
                        Favourite,
                        __Els,
                        Position,
                        Limit,
                        Page,
                        Timestamp,
                        Prefetch,
                        Call_status,
                        Call_type,
                        Caller_device,
                        Call_id,
                        Call_attend_status,
                        Has_more_message},
                       __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"jabber:iq:user_activities">>,
                                    [],
                                    __TopXMLNS),
    _els = [xmpp_codec:encode(_el, __NewTopXMLNS)
            || _el <- __Els]
               ++ encode_user_activities_cdata(Result_type, []),
    _attrs =
        encode_user_activities_attr_has_more_message(Has_more_message,
                                                     encode_user_activities_attr_status(Status,
                                                                                        encode_user_activities_attr_password(Password,
                                                                                                                             encode_user_activities_attr_socket_id(Socket_id,
                                                                                                                                                                   encode_user_activities_attr_message_ids(Message_ids,
                                                                                                                                                                                                           encode_user_activities_attr_call_attend_status(Call_attend_status,
                                                                                                                                                                                                                                                          encode_user_activities_attr_call_id(Call_id,
                                                                                                                                                                                                                                                                                              encode_user_activities_attr_caller_device(Caller_device,
                                                                                                                                                                                                                                                                                                                                        encode_user_activities_attr_call_type(Call_type,
                                                                                                                                                                                                                                                                                                                                                                              encode_user_activities_attr_call_status(Call_status,
                                                                                                                                                                                                                                                                                                                                                                                                                      encode_user_activities_attr_reply_id(Reply_id,
                                                                                                                                                                                                                                                                                                                                                                                                                                                           encode_user_activities_attr_chat_type(Chat_type,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 encode_user_activities_attr_mode(Mode,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  encode_user_activities_attr_to_user(To_user,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      encode_user_activities_attr_delete_type(Delete_type,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              encode_user_activities_attr_favourite(Favourite,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    encode_user_activities_attr_timestamp(Timestamp,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          encode_user_activities_attr_page(Page,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           encode_user_activities_attr_limit(Limit,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             encode_user_activities_attr_prefetch(Prefetch,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  encode_user_activities_attr_position(Position,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       encode_user_activities_attr_message_id(Message_id,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              encode_user_activities_attr_message_to(Message_to,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     encode_user_activities_attr_message_from(Message_from,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              encode_user_activities_attr_type(Type,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               encode_user_activities_attr_remove_user(Remove_user,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  __TopXMLNS))))))))))))))))))))))))))),
    {xmlel, <<"query">>, _attrs, _els}.

decode_user_activities_attr_remove_user(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_user_activities_attr_remove_user(__TopXMLNS,
                                        _val) ->
    _val.

encode_user_activities_attr_remove_user(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_remove_user(_val, _acc) ->
    [{<<"remove_user">>, _val} | _acc].

decode_user_activities_attr_type(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_user_activities_attr_type(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_type(<<>>, _acc) -> _acc;
encode_user_activities_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].

decode_user_activities_attr_message_from(__TopXMLNS,
                                         undefined) ->
    <<>>;
decode_user_activities_attr_message_from(__TopXMLNS,
                                         _val) ->
    _val.

encode_user_activities_attr_message_from(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_message_from(_val, _acc) ->
    [{<<"message_from">>, _val} | _acc].

decode_user_activities_attr_message_to(__TopXMLNS,
                                       undefined) ->
    <<>>;
decode_user_activities_attr_message_to(__TopXMLNS,
                                       _val) ->
    _val.

encode_user_activities_attr_message_to(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_message_to(_val, _acc) ->
    [{<<"message_to">>, _val} | _acc].

decode_user_activities_attr_message_id(__TopXMLNS,
                                       undefined) ->
    <<>>;
decode_user_activities_attr_message_id(__TopXMLNS,
                                       _val) ->
    _val.

encode_user_activities_attr_message_id(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_message_id(_val, _acc) ->
    [{<<"message_id">>, _val} | _acc].

decode_user_activities_attr_position(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_user_activities_attr_position(__TopXMLNS,
                                     _val) ->
    _val.

encode_user_activities_attr_position(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_position(_val, _acc) ->
    [{<<"position">>, _val} | _acc].

decode_user_activities_attr_prefetch(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_user_activities_attr_prefetch(__TopXMLNS,
                                     _val) ->
    _val.

encode_user_activities_attr_prefetch(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_prefetch(_val, _acc) ->
    [{<<"prefetch">>, _val} | _acc].

decode_user_activities_attr_limit(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_user_activities_attr_limit(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_limit(<<>>, _acc) -> _acc;
encode_user_activities_attr_limit(_val, _acc) ->
    [{<<"limit">>, _val} | _acc].

decode_user_activities_attr_page(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_user_activities_attr_page(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_page(<<>>, _acc) -> _acc;
encode_user_activities_attr_page(_val, _acc) ->
    [{<<"page">>, _val} | _acc].

decode_user_activities_attr_timestamp(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_user_activities_attr_timestamp(__TopXMLNS,
                                      _val) ->
    _val.

encode_user_activities_attr_timestamp(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_timestamp(_val, _acc) ->
    [{<<"timestamp">>, _val} | _acc].

decode_user_activities_attr_favourite(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_user_activities_attr_favourite(__TopXMLNS,
                                      _val) ->
    _val.

encode_user_activities_attr_favourite(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_favourite(_val, _acc) ->
    [{<<"favourite">>, _val} | _acc].

decode_user_activities_attr_delete_type(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_user_activities_attr_delete_type(__TopXMLNS,
                                        _val) ->
    _val.

encode_user_activities_attr_delete_type(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_delete_type(_val, _acc) ->
    [{<<"delete_type">>, _val} | _acc].

decode_user_activities_attr_to_user(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_user_activities_attr_to_user(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_to_user(<<>>, _acc) -> _acc;
encode_user_activities_attr_to_user(_val, _acc) ->
    [{<<"to_user">>, _val} | _acc].

decode_user_activities_attr_mode(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_user_activities_attr_mode(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_mode(<<>>, _acc) -> _acc;
encode_user_activities_attr_mode(_val, _acc) ->
    [{<<"mode">>, _val} | _acc].

decode_user_activities_attr_chat_type(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_user_activities_attr_chat_type(__TopXMLNS,
                                      _val) ->
    _val.

encode_user_activities_attr_chat_type(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_user_activities_attr_reply_id(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_user_activities_attr_reply_id(__TopXMLNS,
                                     _val) ->
    _val.

encode_user_activities_attr_reply_id(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_reply_id(_val, _acc) ->
    [{<<"reply_id">>, _val} | _acc].

decode_user_activities_attr_call_status(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_user_activities_attr_call_status(__TopXMLNS,
                                        _val) ->
    _val.

encode_user_activities_attr_call_status(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_call_status(_val, _acc) ->
    [{<<"call_status">>, _val} | _acc].

decode_user_activities_attr_call_type(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_user_activities_attr_call_type(__TopXMLNS,
                                      _val) ->
    _val.

encode_user_activities_attr_call_type(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_call_type(_val, _acc) ->
    [{<<"call_type">>, _val} | _acc].

decode_user_activities_attr_caller_device(__TopXMLNS,
                                          undefined) ->
    <<>>;
decode_user_activities_attr_caller_device(__TopXMLNS,
                                          _val) ->
    _val.

encode_user_activities_attr_caller_device(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_caller_device(_val, _acc) ->
    [{<<"caller_device">>, _val} | _acc].

decode_user_activities_attr_call_id(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_user_activities_attr_call_id(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_call_id(<<>>, _acc) -> _acc;
encode_user_activities_attr_call_id(_val, _acc) ->
    [{<<"call_id">>, _val} | _acc].

decode_user_activities_attr_call_attend_status(__TopXMLNS,
                                               undefined) ->
    <<>>;
decode_user_activities_attr_call_attend_status(__TopXMLNS,
                                               _val) ->
    _val.

encode_user_activities_attr_call_attend_status(<<>>,
                                               _acc) ->
    _acc;
encode_user_activities_attr_call_attend_status(_val,
                                               _acc) ->
    [{<<"call_attend_status">>, _val} | _acc].

decode_user_activities_attr_message_ids(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_user_activities_attr_message_ids(__TopXMLNS,
                                        _val) ->
    _val.

encode_user_activities_attr_message_ids(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_message_ids(_val, _acc) ->
    [{<<"message_ids">>, _val} | _acc].

decode_user_activities_attr_socket_id(__TopXMLNS,
                                      undefined) ->
    <<>>;
decode_user_activities_attr_socket_id(__TopXMLNS,
                                      _val) ->
    _val.

encode_user_activities_attr_socket_id(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_socket_id(_val, _acc) ->
    [{<<"socket_id">>, _val} | _acc].

decode_user_activities_attr_password(__TopXMLNS,
                                     undefined) ->
    <<>>;
decode_user_activities_attr_password(__TopXMLNS,
                                     _val) ->
    _val.

encode_user_activities_attr_password(<<>>, _acc) ->
    _acc;
encode_user_activities_attr_password(_val, _acc) ->
    [{<<"password">>, _val} | _acc].

decode_user_activities_attr_status(__TopXMLNS,
                                   undefined) ->
    <<>>;
decode_user_activities_attr_status(__TopXMLNS, _val) ->
    _val.

encode_user_activities_attr_status(<<>>, _acc) -> _acc;
encode_user_activities_attr_status(_val, _acc) ->
    [{<<"status">>, _val} | _acc].

decode_user_activities_attr_has_more_message(__TopXMLNS,
                                             undefined) ->
    <<>>;
decode_user_activities_attr_has_more_message(__TopXMLNS,
                                             _val) ->
    _val.

encode_user_activities_attr_has_more_message(<<>>,
                                             _acc) ->
    _acc;
encode_user_activities_attr_has_more_message(_val,
                                             _acc) ->
    [{<<"has_more_message">>, _val} | _acc].

decode_user_activities_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_user_activities_cdata(__TopXMLNS, _val) -> _val.

encode_user_activities_cdata(<<>>, _acc) -> _acc;
encode_user_activities_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
