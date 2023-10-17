%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(acknowledge).

-compile(export_all).

do_decode(<<"acknowledge">>, <<"urn:xmpp:receipts">>,
          El, Opts) ->
    decode_acknowledge(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"acknowledge">>, <<"urn:xmpp:receipts">>}].

do_encode({acknowledge, _, _, _, _} = Acknowledge,
          TopXMLNS) ->
    encode_acknowledge(Acknowledge, TopXMLNS).

do_get_name({acknowledge, _, _, _, _}) ->
    <<"acknowledge">>.

do_get_ns({acknowledge, _, _, _, _}) ->
    <<"urn:xmpp:receipts">>.

pp(acknowledge, 4) ->
    [broadcast_msgid, type, id, sent_to];
pp(_, _) -> no.

records() -> [{acknowledge, 4}].

decode_acknowledge(__TopXMLNS, __Opts,
                   {xmlel, <<"acknowledge">>, _attrs, _els}) ->
    {Id, Broadcast_msgid, Sent_to, Type} =
        decode_acknowledge_attrs(__TopXMLNS,
                                 _attrs,
                                 undefined,
                                 undefined,
                                 undefined,
                                 undefined),
    {acknowledge, Broadcast_msgid, Type, Id, Sent_to}.

decode_acknowledge_attrs(__TopXMLNS,
                         [{<<"id">>, _val} | _attrs], _Id, Broadcast_msgid,
                         Sent_to, Type) ->
    decode_acknowledge_attrs(__TopXMLNS,
                             _attrs,
                             _val,
                             Broadcast_msgid,
                             Sent_to,
                             Type);
decode_acknowledge_attrs(__TopXMLNS,
                         [{<<"broadcast_msgid">>, _val} | _attrs], Id,
                         _Broadcast_msgid, Sent_to, Type) ->
    decode_acknowledge_attrs(__TopXMLNS,
                             _attrs,
                             Id,
                             _val,
                             Sent_to,
                             Type);
decode_acknowledge_attrs(__TopXMLNS,
                         [{<<"sent_to">>, _val} | _attrs], Id, Broadcast_msgid,
                         _Sent_to, Type) ->
    decode_acknowledge_attrs(__TopXMLNS,
                             _attrs,
                             Id,
                             Broadcast_msgid,
                             _val,
                             Type);
decode_acknowledge_attrs(__TopXMLNS,
                         [{<<"type">>, _val} | _attrs], Id, Broadcast_msgid,
                         Sent_to, _Type) ->
    decode_acknowledge_attrs(__TopXMLNS,
                             _attrs,
                             Id,
                             Broadcast_msgid,
                             Sent_to,
                             _val);
decode_acknowledge_attrs(__TopXMLNS, [_ | _attrs], Id,
                         Broadcast_msgid, Sent_to, Type) ->
    decode_acknowledge_attrs(__TopXMLNS,
                             _attrs,
                             Id,
                             Broadcast_msgid,
                             Sent_to,
                             Type);
decode_acknowledge_attrs(__TopXMLNS, [], Id,
                         Broadcast_msgid, Sent_to, Type) ->
    {decode_acknowledge_attr_id(__TopXMLNS, Id),
     decode_acknowledge_attr_broadcast_msgid(__TopXMLNS,
                                             Broadcast_msgid),
     decode_acknowledge_attr_sent_to(__TopXMLNS, Sent_to),
     decode_acknowledge_attr_type(__TopXMLNS, Type)}.

encode_acknowledge({acknowledge,
                    Broadcast_msgid,
                    Type,
                    Id,
                    Sent_to},
                   __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_acknowledge_attr_type(Type,
                                          encode_acknowledge_attr_sent_to(Sent_to,
                                                                          encode_acknowledge_attr_broadcast_msgid(Broadcast_msgid,
                                                                                                                  encode_acknowledge_attr_id(Id,
                                                                                                                                             xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                                                                                                        __TopXMLNS))))),
    {xmlel, <<"acknowledge">>, _attrs, _els}.

decode_acknowledge_attr_id(__TopXMLNS, undefined) ->
    <<>>;
decode_acknowledge_attr_id(__TopXMLNS, _val) -> _val.

encode_acknowledge_attr_id(<<>>, _acc) -> _acc;
encode_acknowledge_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_acknowledge_attr_broadcast_msgid(__TopXMLNS,
                                        undefined) ->
    <<>>;
decode_acknowledge_attr_broadcast_msgid(__TopXMLNS,
                                        _val) ->
    _val.

encode_acknowledge_attr_broadcast_msgid(<<>>, _acc) ->
    _acc;
encode_acknowledge_attr_broadcast_msgid(_val, _acc) ->
    [{<<"broadcast_msgid">>, _val} | _acc].

decode_acknowledge_attr_sent_to(__TopXMLNS,
                                undefined) ->
    <<>>;
decode_acknowledge_attr_sent_to(__TopXMLNS, _val) ->
    _val.

encode_acknowledge_attr_sent_to(<<>>, _acc) -> _acc;
encode_acknowledge_attr_sent_to(_val, _acc) ->
    [{<<"sent_to">>, _val} | _acc].

decode_acknowledge_attr_type(__TopXMLNS, undefined) ->
    <<>>;
decode_acknowledge_attr_type(__TopXMLNS, _val) -> _val.

encode_acknowledge_attr_type(<<>>, _acc) -> _acc;
encode_acknowledge_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].
