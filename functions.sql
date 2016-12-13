--
-- Name: fr_abbrev(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE OR REPLACE FUNCTION fr_abbrev(text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace($1,'Avenue ','Av. '),'Boulevard ','Bd. '),'Faubourg ','Fbg. '),'Passage ','Pass. '),'Place ','Pl. '),'Promenade ','Prom. '),'Impasse ','Imp. '),'Centre Commercial ','CCial. '),'Immeuble ','Imm. '),'Lotissement ','Lot. '),'Résidence ','Rés. '),'Square ','Sq. '),'Zone Industrielle ','ZI. '),'Adjudant ','Adj. '),'Agricole ','Agric. '),'Arrondissement','Arrond.'),'Aspirant ','Asp. '),'Bâtiment ','Bat. '),'Colonel ','Col. '),'Commandant ','Cdt. '),'Commercial ','Cial. '),'Coopérative ','Coop. '),'Division ','Div. '),'Docteur ','Dr. '),'Etablissement ','Ets. '),'Général ','Gal. '),'Institut ','Inst. '),'Faculté ','Fac. '),'Laboratoire ','Labo. '),'Lieutenant ','Lt. '),'Maréchal ','Mal. '),'Ministère ','Min. '),'Monseigneur ','Mgr. '),'Bibliothèque ','Bibl. '),'Tribunal ','Trib. '),'Municipale ','Mun. '),'Municipal ','Mun. '),'Observatoire ','Obs. '),'Périphérique ','Périph. '),'Préfecture ','Préf. '),'Président ','Pdt. '),'Régiment ','Rgt. '),'Régional ','Rég. '),'Régionale ','Rég. '),'Saint-','Sᵗ-'),'Sainte-','Sᵗᵉ-'),'Sergent ','Sgt. '),'Université ','Univ. '),'Communauté d.[Aa]gglomération','Comm. d''agglo. '),'Communauté [Uu]rbaine ','Comm. urb. '),'Communauté de [Cc]ommunes ','Comm. comm. '),'Syndicat d.[Aa]gglomération ','Synd. d''agglo. '),'^Chemin ','Ch. '),'^Institut ','Inst. '),'Zone d.[Aa]ctivité.? ','Z.A. '),'Zone [Ii]ndustrielle ','Z.I. ') $_$;

--
-- Name: to_int(text); Type: FUNCTION; Schema: public; Owner: osm2pgsql
--

CREATE OR REPLACE FUNCTION to_int(text) RETURNS bigint
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select left(regexp_replace(coalesce('0'||$1,'0'),'^([0-9]*).*','\1'),12)::bigint; $_$;
