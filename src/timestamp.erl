%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(timestamp).

-compile(export_all).

do_decode(<<"timestamp">>, <<"urn:xmpp:messagetime">>,
          El, Opts) ->
    decode_timestamp(<<"urn:xmpp:messagetime">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"timestamp">>, <<"urn:xmpp:messagetime">>}].

do_encode({timestampmsg, _, _} = Timestamp, TopXMLNS) ->
    encode_timestamp(Timestamp, TopXMLNS).

do_get_name({timestampmsg, _, _}) -> <<"timestamp">>.

do_get_ns({timestampmsg, _, _}) ->
    <<"urn:xmpp:messagetime">>.

pp(timestampmsg, 2) -> [id, time];
pp(_, _) -> no.

records() -> [{timestampmsg, 2}].

decode_timestamp(__TopXMLNS, __Opts,
                 {xmlel, <<"timestamp">>, _attrs, _els}) ->
    {Id, Time} = decode_timestamp_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined,
                                        undefined),
    {timestampmsg, Id, Time}.

decode_timestamp_attrs(__TopXMLNS,
                       [{<<"id">>, _val} | _attrs], _Id, Time) ->
    decode_timestamp_attrs(__TopXMLNS, _attrs, _val, Time);
decode_timestamp_attrs(__TopXMLNS,
                       [{<<"time">>, _val} | _attrs], Id, _Time) ->
    decode_timestamp_attrs(__TopXMLNS, _attrs, Id, _val);
decode_timestamp_attrs(__TopXMLNS, [_ | _attrs], Id,
                       Time) ->
    decode_timestamp_attrs(__TopXMLNS, _attrs, Id, Time);
decode_timestamp_attrs(__TopXMLNS, [], Id, Time) ->
    {decode_timestamp_attr_id(__TopXMLNS, Id),
     decode_timestamp_attr_time(__TopXMLNS, Time)}.

encode_timestamp({timestampmsg, Id, Time},
                 __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:messagetime">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_timestamp_attr_time(Time,
                                        encode_timestamp_attr_id(Id,
                                                                 xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                            __TopXMLNS))),
    {xmlel, <<"timestamp">>, _attrs, _els}.

decode_timestamp_attr_id(__TopXMLNS, undefined) -> <<>>;
decode_timestamp_attr_id(__TopXMLNS, _val) -> _val.

encode_timestamp_attr_id(<<>>, _acc) -> _acc;
encode_timestamp_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_timestamp_attr_time(__TopXMLNS, undefined) ->
    <<>>;
decode_timestamp_attr_time(__TopXMLNS, _val) -> _val.

encode_timestamp_attr_time(<<>>, _acc) -> _acc;
encode_timestamp_attr_time(_val, _acc) ->
    [{<<"time">>, _val} | _acc].
