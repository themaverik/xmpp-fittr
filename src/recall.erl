%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(recall).

-compile(export_all).

do_decode(<<"recall">>, <<"urn:xmpp:receipts">>, El,
          Opts) ->
    decode_recall(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"recall">>, <<"urn:xmpp:receipts">>}].

do_encode({recall, _, _} = Recall, TopXMLNS) ->
    encode_recall(Recall, TopXMLNS).

do_get_name({recall, _, _}) -> <<"recall">>.

do_get_ns({recall, _, _}) -> <<"urn:xmpp:receipts">>.

pp(recall, 2) -> [id, time];
pp(_, _) -> no.

records() -> [{recall, 2}].

decode_recall(__TopXMLNS, __Opts,
              {xmlel, <<"recall">>, _attrs, _els}) ->
    {Id, Time} = decode_recall_attrs(__TopXMLNS,
                                     _attrs,
                                     undefined,
                                     undefined),
    {recall, Id, Time}.

decode_recall_attrs(__TopXMLNS,
                    [{<<"id">>, _val} | _attrs], _Id, Time) ->
    decode_recall_attrs(__TopXMLNS, _attrs, _val, Time);
decode_recall_attrs(__TopXMLNS,
                    [{<<"time">>, _val} | _attrs], Id, _Time) ->
    decode_recall_attrs(__TopXMLNS, _attrs, Id, _val);
decode_recall_attrs(__TopXMLNS, [_ | _attrs], Id,
                    Time) ->
    decode_recall_attrs(__TopXMLNS, _attrs, Id, Time);
decode_recall_attrs(__TopXMLNS, [], Id, Time) ->
    {decode_recall_attr_id(__TopXMLNS, Id),
     decode_recall_attr_time(__TopXMLNS, Time)}.

encode_recall({recall, Id, Time}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_recall_attr_time(Time,
                                     encode_recall_attr_id(Id,
                                                           xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                                      __TopXMLNS))),
    {xmlel, <<"recall">>, _attrs, _els}.

decode_recall_attr_id(__TopXMLNS, undefined) -> <<>>;
decode_recall_attr_id(__TopXMLNS, _val) -> _val.

encode_recall_attr_id(<<>>, _acc) -> _acc;
encode_recall_attr_id(_val, _acc) ->
    [{<<"id">>, _val} | _acc].

decode_recall_attr_time(__TopXMLNS, undefined) -> <<>>;
decode_recall_attr_time(__TopXMLNS, _val) -> _val.

encode_recall_attr_time(<<>>, _acc) -> _acc;
encode_recall_attr_time(_val, _acc) ->
    [{<<"time">>, _val} | _acc].
