%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(seen).

-compile(export_all).

do_decode(<<"seen">>, <<"urn:xmpp:receipts">>, El,
          Opts) ->
    decode_seen(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"seen">>, <<"urn:xmpp:receipts">>}].

do_encode({seen, _, _, _, _} = Seen, TopXMLNS) ->
    encode_seen(Seen, TopXMLNS).

do_get_name({seen, _, _, _, _}) -> <<"seen">>.

do_get_ns({seen, _, _, _, _}) ->
    <<"urn:xmpp:receipts">>.

pp(seen, 4) -> [id, time, chat_type, conversation_jid];
pp(_, _) -> no.

records() -> [{seen, 4}].

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
