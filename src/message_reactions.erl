%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(message_reactions).

-compile(export_all).

do_decode(<<"reactions">>, <<"urn:xmpp:reactions:0">>,
          El, Opts) ->
    decode_reactions(<<"urn:xmpp:reactions:0">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"reactions">>, <<"urn:xmpp:reactions:0">>}].

do_encode({reactions, _} = Reactions, TopXMLNS) ->
    encode_reactions(Reactions, TopXMLNS).

do_get_name({reactions, _}) -> <<"reactions">>.

do_get_ns({reactions, _}) -> <<"urn:xmpp:reactions:0">>.

pp(reactions, 1) -> [msgid];
pp(_, _) -> no.

records() -> [{reactions, 1}].

decode_reactions(__TopXMLNS, __Opts,
                 {xmlel, <<"reactions">>, _attrs, _els}) ->
    Msgid = decode_reactions_attrs(__TopXMLNS,
                                   _attrs,
                                   undefined),
    {reactions, Msgid}.

decode_reactions_attrs(__TopXMLNS,
                       [{<<"msgid">>, _val} | _attrs], _Msgid) ->
    decode_reactions_attrs(__TopXMLNS, _attrs, _val);
decode_reactions_attrs(__TopXMLNS, [_ | _attrs],
                       Msgid) ->
    decode_reactions_attrs(__TopXMLNS, _attrs, Msgid);
decode_reactions_attrs(__TopXMLNS, [], Msgid) ->
    decode_reactions_attr_msgid(__TopXMLNS, Msgid).

encode_reactions({reactions, Msgid}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:reactions:0">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_reactions_attr_msgid(Msgid,
                                         xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                    __TopXMLNS)),
    {xmlel, <<"reactions">>, _attrs, _els}.

decode_reactions_attr_msgid(__TopXMLNS, undefined) ->
    <<>>;
decode_reactions_attr_msgid(__TopXMLNS, _val) -> _val.

encode_reactions_attr_msgid(<<>>, _acc) -> _acc;
encode_reactions_attr_msgid(_val, _acc) ->
    [{<<"msgid">>, _val} | _acc].
