%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(delivered).

-compile(export_all).

do_decode(<<"delivered">>, <<"urn:xmpp:receipts">>, El,
          Opts) ->
    decode_delivered(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"delivered">>, <<"urn:xmpp:receipts">>}].

do_encode({delivered, _, _} = Delivered, TopXMLNS) ->
    encode_delivered(Delivered, TopXMLNS).

do_get_name({delivered, _, _}) -> <<"delivered">>.

do_get_ns({delivered, _, _}) -> <<"urn:xmpp:receipts">>.

pp(delivered, 2) -> [id, time];
pp(_, _) -> no.

records() -> [{delivered, 2}].

decode_delivered(__TopXMLNS, __Opts,
                 {xmlel, <<"delivered">>, _attrs, _els}) ->
    {Id, Time} = decode_delivered_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined,
                                        undefined),
    {delivered, Id, Time}.

decode_delivered_attrs(__TopXMLNS,
                       [{<<"id">>, _val} | _attrs], _Id, Time) ->
    decode_delivered_attrs(__TopXMLNS, _attrs, _val, Time);
decode_delivered_attrs(__TopXMLNS,
                       [{<<"time">>, _val} | _attrs], Id, _Time) ->
    decode_delivered_attrs(__TopXMLNS, _attrs, Id, _val);
decode_delivered_attrs(__TopXMLNS, [_ | _attrs], Id,
                       Time) ->
    decode_delivered_attrs(__TopXMLNS, _attrs, Id, Time);
decode_delivered_attrs(__TopXMLNS, [], Id, Time) ->
    {decode_delivered_attr_id(__TopXMLNS, Id),
     decode_delivered_attr_time(__TopXMLNS, Time)}.

encode_delivered({delivered, Id, Time}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_delivered_attr_time(Time,
                                        encode_delivered_attr_id(Id,
                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                            __TopXMLNS))),
    {xmlel, <<"delivered">>, _attrs, _els}.

decode_delivered_attr_id(__TopXMLNS, undefined) -> <<>>;
decode_delivered_attr_id(__TopXMLNS, _val) -> _val.

encode_delivered_attr_id(<<>>, _acc) -> _acc;
encode_delivered_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_delivered_attr_time(__TopXMLNS, undefined) ->
    <<>>;
decode_delivered_attr_time(__TopXMLNS, _val) -> _val.

encode_delivered_attr_time(<<>>, _acc) -> _acc;
encode_delivered_attr_time(_val, _acc) ->
    [{<<"time">>, _val} | _acc].
