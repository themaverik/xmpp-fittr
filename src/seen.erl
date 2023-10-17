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

do_encode({seen, _, _} = Seen, TopXMLNS) ->
    encode_seen(Seen, TopXMLNS).

do_get_name({seen, _, _}) -> <<"seen">>.

do_get_ns({seen, _, _}) -> <<"urn:xmpp:receipts">>.

pp(seen, 2) -> [id, time];
pp(_, _) -> no.

records() -> [{seen, 2}].

decode_seen(__TopXMLNS, __Opts,
            {xmlel, <<"seen">>, _attrs, _els}) ->
    {Id, Time} = decode_seen_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined,
                                   undefined),
    {seen, Id, Time}.

decode_seen_attrs(__TopXMLNS,
                  [{<<"id">>, _val} | _attrs], _Id, Time) ->
    decode_seen_attrs(__TopXMLNS, _attrs, _val, Time);
decode_seen_attrs(__TopXMLNS,
                  [{<<"time">>, _val} | _attrs], Id, _Time) ->
    decode_seen_attrs(__TopXMLNS, _attrs, Id, _val);
decode_seen_attrs(__TopXMLNS, [_ | _attrs], Id, Time) ->
    decode_seen_attrs(__TopXMLNS, _attrs, Id, Time);
decode_seen_attrs(__TopXMLNS, [], Id, Time) ->
    {decode_seen_attr_id(__TopXMLNS, Id),
     decode_seen_attr_time(__TopXMLNS, Time)}.

encode_seen({seen, Id, Time}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_seen_attr_time(Time,
                                   encode_seen_attr_id(Id,
                                                       xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                  __TopXMLNS))),
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
