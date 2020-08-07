CREATE TABLE public.params (
    key text,
    txt text,
    num numeric
);
INSERT INTO public.params VALUES ('y_bleed', '0', 0);
INSERT INTO public.params VALUES ('x_bleed', '0', 0);
INSERT INTO public.params VALUES ('buffer', '0', 0);

GRANT SELECT ON TABLE params TO PUBLIC;

--
-- Name: fr_abbrev(text); Type: FUNCTION; Schema: public; Owner: postgres
--

CREATE OR REPLACE FUNCTION fr_abbrev(text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace($1,'lémentaire ','lem. '),'econdaire ','econd. '),'rimaire ','rim. '),'aternelle ','at. '),'olyvalent ','ol. '),'ommerciale ','omm. '),'Direction ','Dir. '),'Esplanade ','Espl. '),'Chapelle ','Chap. '),'Cathédrale ','Cath. '),' Notre-Dame ',' N.D. '),'Avenue ','Av. '),'Boulevard ','Bd. '),'Faubourg ','Fbg. '),'Passage ','Pass. '),'Place ','Pl. '),'Promenade ','Prom. '),'Impasse ','Imp. '),'Centre Commercial ','CCial. '),'Immeuble ','Imm. '),'Lotissement ','Lot. '),'Résidence ','Rés. '),'Square ','Sq. '),'Zone Industrielle ','ZI. '),'Adjudant ','Adj. '),'Agricole ','Agric. '),'Arrondissement','Arrond.'),'Aspirant ','Asp. '),'Colonel ','Col. '),'Commandant ','Cdt. '),'Capitaine ','Capt. '),'Commercial ','Cial. '),'Coopérative ','Coop. '),'Division ','Div. '),'Docteur ','Dr. '),'Général ','Gén. '),'Institut ','Inst. '),'Faculté ','Fac. '),'Laboratoire ','Labo. '),'Lieutenant ','Lt. '),'Maréchal ','Mal. '),'Ministère ','Min. '),'Monseigneur ','Mgr. '),'Médiathèque ','Médiat. '),'Bibliothèque ','Bibl. '),'Tribunal ','Trib. '),'Observatoire ','Obs. '),'Périphérique ','Périph. '),'Préfecture ','Préf. '),'Président ','Pdt. '),'Régiment ','Rgt. '),'Saint-','Sᵗ-'),'Sainte-','Sᵗᵉ-'),'Sergent ','Sgt. '),'Université ','Univ. '),'Communauté d.[Aa]gglomération','Comm. d''agglo. '),'Communauté [Uu]rbaine ','Comm. urb. '),'Communauté de [Cc]ommunes ','Comm. comm. '),'Syndicat d.[Aa]gglomération ','Synd. d''agglo. '),'^Chemin ','Ch. '),'^Institut ','Inst. '),'Zone d.[Aa]ctivité.? [Éeée]conommique.? ','Z.A.E. '),'Zone d.[Aa]ctivité.? ','Z.A. '),'Zone  [Aa]rtisanale ','Zone Art. '),'Zone [Ii]ndustrielle ','Z.I. '),' [Pp]ubli(c|que) ',' Publ. '),' [Pp]rofessionnel(|le) ',' Prof. '),' [Tt]echnologique ',' Techno. '),' [Pp]olyvalent ',' Polyv. '),'[EÉeé]tablissement(|s) ','Éts. '),' [Mm]unicipal(|e) ',' Munic. '),' [Dd]épartemental(|e) ',' Départ. '),' [Ii]ntercommunal(|le) ',' Interco. '),' [Rr]égional(|e) ',' Région. '),' [Ii]nterdépartemental(|e) ',' Interdép. '),' [Hh]ospitali(er|ère) ',' Hospit. '),' [EÉeé]lectrique ',' Élect. '),' [Ss]upérieur(|e) ',' Sup. '),'^[Bb][aâ]timent ','Bât. '),'[Aa]éronautique ','Aéron. ') $_$;

--
-- Name: to_int(text); Type: FUNCTION; Schema: public; Owner: osm2pgsql
--

CREATE OR REPLACE FUNCTION to_int(text) RETURNS bigint
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $_$ select coalesce(left(regexp_replace($1,'^(|\-)([0-9]*).*','\10\2'),12),'0')::bigint; $_$;

--
-- Name: bbbox, computes the "bleed" bbox, with margins
-- example: st_intersection(bbbox(!bbox!,!pixel_width!,!pixel_height!,0),way)

CREATE OR REPLACE FUNCTION bbbox(box2d,float,float,integer) RETURNS geometry
  LANGUAGE sql IMMUTABLE PARALLEL SAFE AS $_$
select ST_SetSRID(ST_MakeBox2D(ST_Point(ST_XMin($1)+$2*((select num from params where key='x_bleed')+(select num from params where key='buffer')+$4),ST_Ymin($1)+$3*((select num from params where key='y_bleed')+(select num from params where key='buffer')+$4)), ST_Point(ST_XMax($1)-$2*((select num from params where key='x_bleed')+(select num from params where key='buffer')+$4),ST_Ymax($1)-$3*((select num from params where key='y_bleed')+(select num from params where key='buffer')+10))),3857);
$_$;
