%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(message_reaction).

-compile(export_all).

do_decode(<<"reaction">>, <<"urn:xmpp:reaction:0">>, El,
          Opts) ->
    decode_reaction(<<"urn:xmpp:reaction:0">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"reaction">>, <<"urn:xmpp:reaction:0">>}].

do_encode({reaction, _, _, _, _, _, _, _, _} = Reaction,
          TopXMLNS) ->
    encode_reaction(Reaction, TopXMLNS).

do_get_name({reaction, _, _, _, _, _, _, _, _}) ->
    <<"reaction">>.

do_get_ns({reaction, _, _, _, _, _, _, _, _}) ->
    <<"urn:xmpp:reaction:0">>.

pp(reaction, 8) ->
    [msgid,
     from_user,
     sender_name,
     message_type,
     chat_type,
     group_jid,
     timestamp,
     result_type];
pp(_, _) -> no.

records() -> [{reaction, 8}].

decode_reaction(__TopXMLNS, __Opts,
                {xmlel, <<"reaction">>, _attrs, _els}) ->
    Result_type = decode_reaction_els(__TopXMLNS,
                                      __Opts,
                                      _els,
                                      <<>>),
    {Msgid,
     From_user,
     Sender_name,
     Message_type,
     Chat_type,
     Group_jid,
     Timestamp} =
        decode_reaction_attrs(__TopXMLNS,
                              _attrs,
                              undefined,
                              undefined,
                              undefined,
                              undefined,
                              undefined,
                              undefined,
                              undefined),
    {reaction,
     Msgid,
     From_user,
     Sender_name,
     Message_type,
     Chat_type,
     Group_jid,
     Timestamp,
     Result_type}.

decode_reaction_els(__TopXMLNS, __Opts, [],
                    Result_type) ->
    decode_reaction_cdata(__TopXMLNS, Result_type);
decode_reaction_els(__TopXMLNS, __Opts,
                    [{xmlcdata, _data} | _els], Result_type) ->
    decode_reaction_els(__TopXMLNS,
                        __Opts,
                        _els,
                        <<Result_type/binary, _data/binary>>);
decode_reaction_els(__TopXMLNS, __Opts, [_ | _els],
                    Result_type) ->
    decode_reaction_els(__TopXMLNS,
                        __Opts,
                        _els,
                        Result_type).

decode_reaction_attrs(__TopXMLNS,
                      [{<<"msgid">>, _val} | _attrs], _Msgid, From_user,
                      Sender_name, Message_type, Chat_type, Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          _val,
                          From_user,
                          Sender_name,
                          Message_type,
                          Chat_type,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"from_user">>, _val} | _attrs], Msgid, _From_user,
                      Sender_name, Message_type, Chat_type, Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          _val,
                          Sender_name,
                          Message_type,
                          Chat_type,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"sender_name">>, _val} | _attrs], Msgid, From_user,
                      _Sender_name, Message_type, Chat_type, Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          _val,
                          Message_type,
                          Chat_type,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"message_type">>, _val} | _attrs], Msgid, From_user,
                      Sender_name, _Message_type, Chat_type, Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          Sender_name,
                          _val,
                          Chat_type,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"chat_type">>, _val} | _attrs], Msgid, From_user,
                      Sender_name, Message_type, _Chat_type, Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          Sender_name,
                          Message_type,
                          _val,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"group_jid">>, _val} | _attrs], Msgid, From_user,
                      Sender_name, Message_type, Chat_type, _Group_jid,
                      Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          Sender_name,
                          Message_type,
                          Chat_type,
                          _val,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS,
                      [{<<"timestamp">>, _val} | _attrs], Msgid, From_user,
                      Sender_name, Message_type, Chat_type, Group_jid,
                      _Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          Sender_name,
                          Message_type,
                          Chat_type,
                          Group_jid,
                          _val);
decode_reaction_attrs(__TopXMLNS, [_ | _attrs], Msgid,
                      From_user, Sender_name, Message_type, Chat_type,
                      Group_jid, Timestamp) ->
    decode_reaction_attrs(__TopXMLNS,
                          _attrs,
                          Msgid,
                          From_user,
                          Sender_name,
                          Message_type,
                          Chat_type,
                          Group_jid,
                          Timestamp);
decode_reaction_attrs(__TopXMLNS, [], Msgid, From_user,
                      Sender_name, Message_type, Chat_type, Group_jid,
                      Timestamp) ->
    {decode_reaction_attr_msgid(__TopXMLNS, Msgid),
     decode_reaction_attr_from_user(__TopXMLNS, From_user),
     decode_reaction_attr_sender_name(__TopXMLNS,
                                      Sender_name),
     decode_reaction_attr_message_type(__TopXMLNS,
                                       Message_type),
     decode_reaction_attr_chat_type(__TopXMLNS, Chat_type),
     decode_reaction_attr_group_jid(__TopXMLNS, Group_jid),
     decode_reaction_attr_timestamp(__TopXMLNS, Timestamp)}.

encode_reaction({reaction,
                 Msgid,
                 From_user,
                 Sender_name,
                 Message_type,
                 Chat_type,
                 Group_jid,
                 Timestamp,
                 Result_type},
                __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:reaction:0">>,
                                    [],
                                    __TopXMLNS),
    _els = encode_reaction_cdata(Result_type, []),
    _attrs = encode_reaction_attr_timestamp(Timestamp,
                                            encode_reaction_attr_group_jid(Group_jid,
                                                                           encode_reaction_attr_chat_type(Chat_type,
                                                                                                          encode_reaction_attr_message_type(Message_type,
                                                                                                                                            encode_reaction_attr_sender_name(Sender_name,
                                                                                                                                                                             encode_reaction_attr_from_user(From_user,
                                                                                                                                                                                                            encode_reaction_attr_msgid(Msgid,
                                                                                                                                                                                                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                                                                                                                  __TopXMLNS)))))))),
    {xmlel, <<"reaction">>, _attrs, _els}.

decode_reaction_attr_msgid(__TopXMLNS, undefined) ->
    <<>>;
decode_reaction_attr_msgid(__TopXMLNS, _val) -> _val.

encode_reaction_attr_msgid(<<>>, _acc) -> _acc;
encode_reaction_attr_msgid(_val, _acc) ->
    [{<<"msgid">>, _val} | _acc].

decode_reaction_attr_from_user(__TopXMLNS, undefined) ->
    <<>>;
decode_reaction_attr_from_user(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_from_user(<<>>, _acc) -> _acc;
encode_reaction_attr_from_user(_val, _acc) ->
    [{<<"from_user">>, _val} | _acc].

decode_reaction_attr_sender_name(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_reaction_attr_sender_name(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_sender_name(<<>>, _acc) -> _acc;
encode_reaction_attr_sender_name(_val, _acc) ->
    [{<<"sender_name">>, _val} | _acc].

decode_reaction_attr_message_type(__TopXMLNS,
                                  undefined) ->
    <<>>;
decode_reaction_attr_message_type(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_message_type(<<>>, _acc) -> _acc;
encode_reaction_attr_message_type(_val, _acc) ->
    [{<<"message_type">>, _val} | _acc].

decode_reaction_attr_chat_type(__TopXMLNS, undefined) ->
    <<>>;
decode_reaction_attr_chat_type(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_chat_type(<<>>, _acc) -> _acc;
encode_reaction_attr_chat_type(_val, _acc) ->
    [{<<"chat_type">>, _val} | _acc].

decode_reaction_attr_group_jid(__TopXMLNS, undefined) ->
    <<>>;
decode_reaction_attr_group_jid(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_group_jid(<<>>, _acc) -> _acc;
encode_reaction_attr_group_jid(_val, _acc) ->
    [{<<"group_jid">>, _val} | _acc].

decode_reaction_attr_timestamp(__TopXMLNS, undefined) ->
    <<>>;
decode_reaction_attr_timestamp(__TopXMLNS, _val) ->
    _val.

encode_reaction_attr_timestamp(<<>>, _acc) -> _acc;
encode_reaction_attr_timestamp(_val, _acc) ->
    [{<<"timestamp">>, _val} | _acc].

decode_reaction_cdata(__TopXMLNS, <<>>) -> <<>>;
decode_reaction_cdata(__TopXMLNS, _val) -> _val.

encode_reaction_cdata(<<>>, _acc) -> _acc;
encode_reaction_cdata(_val, _acc) ->
    [{xmlcdata, _val} | _acc].
