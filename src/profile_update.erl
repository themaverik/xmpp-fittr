%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(profile_update).

-compile(export_all).

do_decode(<<"profile_update">>, <<"urn:xmpp:receipts">>,
          El, Opts) ->
    decode_profile_update(<<"urn:xmpp:receipts">>,
                          Opts,
                          El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() ->
    [{<<"profile_update">>, <<"urn:xmpp:receipts">>}].

do_encode({profile_update, _} = Profile_update,
          TopXMLNS) ->
    encode_profile_update(Profile_update, TopXMLNS).

do_get_name({profile_update, _}) ->
    <<"profile_update">>.

do_get_ns({profile_update, _}) ->
    <<"urn:xmpp:receipts">>.

pp(profile_update, 1) -> [vcard];
pp(_, _) -> no.

records() -> [{profile_update, 1}].

decode_profile_update(__TopXMLNS, __Opts,
                      {xmlel, <<"profile_update">>, _attrs, _els}) ->
    Vcard = decode_profile_update_attrs(__TopXMLNS,
                                        _attrs,
                                        undefined),
    {profile_update, Vcard}.

decode_profile_update_attrs(__TopXMLNS,
                            [{<<"vcard">>, _val} | _attrs], _Vcard) ->
    decode_profile_update_attrs(__TopXMLNS, _attrs, _val);
decode_profile_update_attrs(__TopXMLNS, [_ | _attrs],
                            Vcard) ->
    decode_profile_update_attrs(__TopXMLNS, _attrs, Vcard);
decode_profile_update_attrs(__TopXMLNS, [], Vcard) ->
    decode_profile_update_attr_vcard(__TopXMLNS, Vcard).

encode_profile_update({profile_update, Vcard},
                      __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_profile_update_attr_vcard(Vcard,
                                              xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                         __TopXMLNS)),
    {xmlel, <<"profile_update">>, _attrs, _els}.

decode_profile_update_attr_vcard(__TopXMLNS,
                                 undefined) ->
    <<>>;
decode_profile_update_attr_vcard(__TopXMLNS, _val) ->
    _val.

encode_profile_update_attr_vcard(<<>>, _acc) -> _acc;
encode_profile_update_attr_vcard(_val, _acc) ->
    [{<<"vcard">>, _val} | _acc].
