%% Created automatically by XML generator (fxml_gen.erl)
%% Source: xmpp_codec.spec

-module(logout).

-compile(export_all).

do_decode(<<"logout">>, <<"urn:xmpp:receipts">>, El,
          Opts) ->
    decode_logout(<<"urn:xmpp:receipts">>, Opts, El);
do_decode(Name, <<>>, _, _) ->
    erlang:error({xmpp_codec, {missing_tag_xmlns, Name}});
do_decode(Name, XMLNS, _, _) ->
    erlang:error({xmpp_codec, {unknown_tag, Name, XMLNS}}).

tags() -> [{<<"logout">>, <<"urn:xmpp:receipts">>}].

do_encode({logout, _} = Logout, TopXMLNS) ->
    encode_logout(Logout, TopXMLNS).

do_get_name({logout, _}) -> <<"logout">>.

do_get_ns({logout, _}) -> <<"urn:xmpp:receipts">>.

pp(logout, 1) -> [type];
pp(_, _) -> no.

records() -> [{logout, 1}].

decode_logout(__TopXMLNS, __Opts,
              {xmlel, <<"logout">>, _attrs, _els}) ->
    Type = decode_logout_attrs(__TopXMLNS,
                               _attrs,
                               undefined),
    {logout, Type}.

decode_logout_attrs(__TopXMLNS,
                    [{<<"type">>, _val} | _attrs], _Type) ->
    decode_logout_attrs(__TopXMLNS, _attrs, _val);
decode_logout_attrs(__TopXMLNS, [_ | _attrs], Type) ->
    decode_logout_attrs(__TopXMLNS, _attrs, Type);
decode_logout_attrs(__TopXMLNS, [], Type) ->
    decode_logout_attr_type(__TopXMLNS, Type).

encode_logout({logout, Type}, __TopXMLNS) ->
    __NewTopXMLNS =
        xmpp_codec:choose_top_xmlns(<<"urn:xmpp:receipts">>,
                                    [],
                                    __TopXMLNS),
    _els = [],
    _attrs = encode_logout_attr_type(Type,
                                     xmpp_codec:enc_xmlns_attrs(__NewTopXMLNS,
                                                                __TopXMLNS)),
    {xmlel, <<"logout">>, _attrs, _els}.

decode_logout_attr_type(__TopXMLNS, undefined) -> <<>>;
decode_logout_attr_type(__TopXMLNS, _val) -> _val.

encode_logout_attr_type(<<>>, _acc) -> _acc;
encode_logout_attr_type(_val, _acc) ->
    [{<<"type">>, _val} | _acc].
