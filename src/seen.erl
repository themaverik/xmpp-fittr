%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(seen).

-compile(export_all).

do_decode(<<"seen_messages">>,
          <<"urn:xmpp:receipts:1">>, El, Opts) ->
    decode_seen_messages(<<"urn:xmpp:receipts:1">>,
                         Opts,
                         El);
do_decode(<<"seen_message">>, <<"urn:xmpp:receipts:1">>,
          El, Opts) ->
    decode_seen_message(<<"urn:xmpp:receipts:1">>,
                        Opts,
                        El);
do_decode(<<"seen">>, <<"urn:xmpp:receipts">>, El,
          Opts) ->
    decode_seen(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"seen_messages">>, <<"urn:xmpp:receipts:1">>},
     {<<"seen_message">>, <<"urn:xmpp:receipts:1">>},
     {<<"seen">>, <<"urn:xmpp:receipts">>}].

do_encode({seen, _, _, _, _} = Seen, TopXMLNS) ->
    encode_seen(Seen, TopXMLNS);
do_encode({seen_message, _, _} = Seen_message,
          TopXMLNS) ->
    encode_seen_message(Seen_message, TopXMLNS);
do_encode({seen_messages, _, _, _} = Seen_messages,
          TopXMLNS) ->
    encode_seen_messages(Seen_messages, TopXMLNS).

do_get_name({seen, _, _, _, _}) -> <<"seen">>;
do_get_name({seen_message, _, _}) -> <<"seen_message">>;
do_get_name({seen_messages, _, _, _}) ->
    <<"seen_messages">>.

do_get_ns({seen, _, _, _, _}) ->
    <<"urn:xmpp:receipts">>;
do_get_ns({seen_message, _, _}) ->
    <<"urn:xmpp:receipts:1">>;
do_get_ns({seen_messages, _, _, _}) ->
    <<"urn:xmpp:receipts:1">>.

pp(seen, 4) -> [id, time, chat_type, conversation_jid];
pp(seen_message, 2) -> [id, time];
pp(seen_messages, 3) ->
    [chat_type, conversation_jid, items];
pp(_, _) -> no.

records() ->
    [{seen, 4}, {seen_message, 2}, {seen_messages, 3}].

decode_seen_messages(__TopXMLNS, __Opts,
                     {xmlel, <<"seen_messages">>, _attrs, _els}) ->
    Items = decode_seen_messages_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     []),
    {Chat_type, Conversation_jid} =
        decode_seen_messages_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined,
                                   undefined),
    {seen_messages, Chat_type, Conversation_jid, Items}.

decode_seen_messages_els(__TopXMLNS, __Opts, [],
                         Items) ->
    lists:reverse(Items);
decode_seen_messages_els(__TopXMLNS, __Opts,
                         [{xmlel, <<"seen_message">>, _attrs, _} = _el | _els],
                         Items) ->
    case xmpp_codec:get_attr(<<"xmlns">>,
                             _attrs,
                             __TopXMLNS)
        of
        <<"urn:xmpp:receipts:1">> ->
            decode_seen_messages_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     [decode_seen_message(<<"urn:xmpp:receipts:1">>,
                                                          __Opts,
                                                          _el)
                                      | Items]);
        _ ->
            decode_seen_messages_els(__TopXMLNS,
                                     __Opts,
                                     _els,
                                     Items)
    end;
decode_seen_messages_els(__TopXMLNS, __Opts, [_ | _els],
                         Items) ->
    decode_seen_messages_els(__TopXMLNS,
                             __Opts,
                             _els,
                             Items).

decode_seen_messages_attrs(__TopXMLNS,
                           [{<<"chat_type">>, _val} | _attrs], _Chat_type,
                           Conversation_jid) ->
    decode_seen_messages_attrs(__TopXMLNS,
                               _attrs,
                               _val,
                               Conversation_jid);
decode_seen_messages_attrs(__TopXMLNS,
                           [{<<"conversation_jid">>, _val} | _attrs], Chat_type,
                           _Conversation_jid) ->
    decode_seen_messages_attrs(__TopXMLNS,
                               _attrs,
                               Chat_type,
                               _val);
decode_seen_messages_attrs(__TopXMLNS, [_ | _attrs],
                           Chat_type, Conversation_jid) ->
    decode_seen_messages_attrs(__TopXMLNS,
                               _attrs,
                               Chat_type,
                               Conversation_jid);
decode_seen_messages_attrs(__TopXMLNS, [], Chat_type,
                           Conversation_jid) ->
    {decode_seen_messages_attr_chat_type(__TopXMLNS,
                                         Chat_type),
     decode_seen_messages_attr_conversation_jid(__TopXMLNS,
                                                Conversation_jid)}.

encode_seen_messages({seen_messages,
                      Chat_type,
                      Conversation_jid,
                      Items},
                     __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts:1">>,
                                    [],
                                    __TopXMLNS),
    _els =
        lists:reverse('encode_seen_messages_$items'(Items,
                                                    __NewTopXMLNS,
                                                    [])),
    _attrs =
        encode_seen_messages_attr_conversation_jid(Conversation_jid,
                                                   encode_seen_messages_attr_chat_type(Chat_type,
                                                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                  __TopXMLNS))),
    {xmlel, <<"seen_messages">>, _attrs, _els}.

'encode_seen_messages_$items'([], __TopXMLNS, _acc) ->
    _acc;
'encode_seen_messages_$items'([Items | _els],
                              __TopXMLNS, _acc) ->
    'encode_seen_messages_$items'(_els,
                                  __TopXMLNS,
                                  [encode_seen_message(Items, __TopXMLNS)
                                   | _acc]).

decode_seen_messages_attr_chat_type(__TopXMLNS,
                                    undefined) ->
    <<>>;
decode_seen_messages_attr_chat_type(__TopXMLNS, _val) ->
    _val.

encode_seen_messages_attr_chat_type(<<>>, _acc) -> _acc;
encode_seen_messages_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_seen_messages_attr_conversation_jid(__TopXMLNS,
                                           undefined) ->
    <<>>;
decode_seen_messages_attr_conversation_jid(__TopXMLNS,
                                           _val) ->
    _val.

encode_seen_messages_attr_conversation_jid(<<>>,
                                           _acc) ->
    _acc;
encode_seen_messages_attr_conversation_jid(_val,
                                           _acc) ->
    [{<<"conversation_jid">>, _val} | _acc].

decode_seen_message(__TopXMLNS, __Opts,
                    {xmlel, <<"seen_message">>, _attrs, _els}) ->
    {Id, Time} = decode_seen_message_attrs(__TopXMLNS,
                                           _attrs,
                                           undefined,
                                           undefined),
    {seen_message, Id, Time}.

decode_seen_message_attrs(__TopXMLNS,
                          [{<<"id">>, _val} | _attrs], _Id, Time) ->
    decode_seen_message_attrs(__TopXMLNS,
                              _attrs,
                              _val,
                              Time);
decode_seen_message_attrs(__TopXMLNS,
                          [{<<"time">>, _val} | _attrs], Id, _Time) ->
    decode_seen_message_attrs(__TopXMLNS, _attrs, Id, _val);
decode_seen_message_attrs(__TopXMLNS, [_ | _attrs], Id,
                          Time) ->
    decode_seen_message_attrs(__TopXMLNS, _attrs, Id, Time);
decode_seen_message_attrs(__TopXMLNS, [], Id, Time) ->
    {decode_seen_message_attr_id(__TopXMLNS, Id),
     decode_seen_message_attr_time(__TopXMLNS, Time)}.

encode_seen_message({seen_message, Id, Time},
                    __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts:1">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_seen_message_attr_time(Time,
                                           encode_seen_message_attr_id(Id,
                                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                  __TopXMLNS))),
    {xmlel, <<"seen_message">>, _attrs, _els}.

decode_seen_message_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_seen_message_attr_id(__TopXMLNS, _val) -> _val.

encode_seen_message_attr_id(<<>>, _acc) -> _acc;
encode_seen_message_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_seen_message_attr_time(__TopXMLNS, undefined) ->
    <<>>;
decode_seen_message_attr_time(__TopXMLNS, _val) -> _val.

encode_seen_message_attr_time(<<>>, _acc) -> _acc;
encode_seen_message_attr_time(_val, _acc) ->
    [{<<"time">>, _val} | _acc].

decode_seen(__TopXMLNS, __Opts,
            {xmlel, <<"seen">>, _attrs, _els}) ->
    {Id, Time, Chat_type, Conversation_jid} =
        decode_seen_attrs(__TopXMLNS,
                          _attrs,
                          undefined,
                          undefined,
                          undefined,
                          undefined),
    {seen, Id, Time, Chat_type, Conversation_jid}.

decode_seen_attrs(__TopXMLNS,
                  [{<<"id">>, _val} | _attrs], _Id, Time, Chat_type,
                  Conversation_jid) ->
    decode_seen_attrs(__TopXMLNS,
                      _attrs,
                      _val,
                      Time,
                      Chat_type,
                      Conversation_jid);
decode_seen_attrs(__TopXMLNS,
                  [{<<"time">>, _val} | _attrs], Id, _Time, Chat_type,
                  Conversation_jid) ->
    decode_seen_attrs(__TopXMLNS,
                      _attrs,
                      Id,
                      _val,
                      Chat_type,
                      Conversation_jid);
decode_seen_attrs(__TopXMLNS,
                  [{<<"chat_type">>, _val} | _attrs], Id, Time,
                  _Chat_type, Conversation_jid) ->
    decode_seen_attrs(__TopXMLNS,
                      _attrs,
                      Id,
                      Time,
                      _val,
                      Conversation_jid);
decode_seen_attrs(__TopXMLNS,
                  [{<<"conversation_jid">>, _val} | _attrs], Id, Time,
                  Chat_type, _Conversation_jid) ->
    decode_seen_attrs(__TopXMLNS,
                      _attrs,
                      Id,
                      Time,
                      Chat_type,
                      _val);
decode_seen_attrs(__TopXMLNS, [_ | _attrs], Id, Time,
                  Chat_type, Conversation_jid) ->
    decode_seen_attrs(__TopXMLNS,
                      _attrs,
                      Id,
                      Time,
                      Chat_type,
                      Conversation_jid);
decode_seen_attrs(__TopXMLNS, [], Id, Time, Chat_type,
                  Conversation_jid) ->
    {decode_seen_attr_id(__TopXMLNS, Id),
     decode_seen_attr_time(__TopXMLNS, Time),
     decode_seen_attr_chat_type(__TopXMLNS, Chat_type),
     decode_seen_attr_conversation_jid(__TopXMLNS,
                                       Conversation_jid)}.

encode_seen({seen,
             Id,
             Time,
             Chat_type,
             Conversation_jid},
            __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs =
        encode_seen_attr_conversation_jid(Conversation_jid,
                                          encode_seen_attr_chat_type(Chat_type,
                                                                     encode_seen_attr_time(Time,
                                                                                           encode_seen_attr_id(Id,
                                                                                                               xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                          __TopXMLNS))))),
    {xmlel, <<"seen">>, _attrs, _els}.

decode_seen_attr_id(__TopXMLNS, undefined) -> <<>>;
decode_seen_attr_id(__TopXMLNS, _val) -> _val.

encode_seen_attr_id(<<>>, _acc) -> _acc;
encode_seen_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_seen_attr_time(__TopXMLNS, undefined) -> <<>>;
decode_seen_attr_time(__TopXMLNS, _val) -> _val.

encode_seen_attr_time(<<>>, _acc) -> _acc;
encode_seen_attr_time(_val, _acc) ->
    [{<<"time">>, _val} | _acc].

decode_seen_attr_chat_type(__TopXMLNS, undefined) ->
    <<>>;
decode_seen_attr_chat_type(__TopXMLNS, _val) -> _val.

encode_seen_attr_chat_type(<<>>, _acc) -> _acc;
encode_seen_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_seen_attr_conversation_jid(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_seen_attr_conversation_jid(__TopXMLNS, _val) ->
    _val.

encode_seen_attr_conversation_jid(<<>>, _acc) -> _acc;
encode_seen_attr_conversation_jid(_val, _acc) ->
    [{<<"conversation_jid">>, _val} | _acc].
