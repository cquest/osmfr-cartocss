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
    AS $_$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace($1,'lémentaire ','lem. '),'econdaire ','econd. '),'rimaire ','rim. '),'aternelle ','at. '),'olyvalent ','ol. '),'ommerciale ','omm. '),'Direction ','Dir. '),'Esplanade ','Espl. '),'Chapelle ','Chap. '),'Cathédrale ','Cath. '),' Notre-Dame ',' N.D. '),'Avenue ','Av. '),'Autoroute ','Aut. '),'Boulevard ','Bd. '),'Faubourg ','Fbg. '),'Passage ','Pass. '),'Place ','Pl. '),'Promenade ','Prom. '),'Impasse ','Imp. '),'Centre Commercial ','CCial. '),'Immeuble ','Imm. '),'Lotissement ','Lot. '),'Résidence ','Rés. '),'Square ','Sq. '),'Zone Industrielle ','ZI. '),'Adjudant ','Adj. '),'Agricole ','Agric. '),'Arrondissement','Arrond.'),'Aspirant ','Asp. '),'Colonel ','Col. '),'Commandant ','Cdt. '),'Capitaine ','Capt. '),'Commercial ','Cial. '),'Coopérative ','Coop. '),'Division ','Div. '),'Docteur ','Dr. '),'Général ','Gén. '),'Institut ','Inst. '),'Faculté ','Fac. '),'Laboratoire ','Labo. '),'Lieutenant ','Lt. '),'Maréchal ','Mal. '),'Ministère ','Min. '),'Monseigneur ','Mgr. '),'Médiathèque ','Médiat. '),'Bibliothèque ','Bibl. '),'Tribunal ','Trib. '),'Observatoire ','Obs. '),'Périphérique ','Périph. '),'Préfecture ','Préf. '),'Chevalier ','Chev. '),'Président ','Pdt. '),'Régiment ','Rgt. '),'Saint-','Sᵗ-'),'Sainte-','Sᵗᵉ-'),'Sergent ','Sgt. '),'Université ','Univ. '),'Communauté d.[Aa]gglomération','Comm. d''agglo. '),'Communauté [Uu]rbaine ','Comm. urb. '),'Communauté de [Cc]ommunes ','Comm. comm. '),'Syndicat d.[Aa]gglomération ','Synd. d''agglo. '),'^Chemin ','Ch. '),'^Institut ','Inst. '),'Zone d.[Aa]ctivité.? [Éeée]conommique.? ','Z.A.E. '),'Zone d.[Aa]ctivité.? ','Z.A. '),'Zone  [Aa]rtisanale ','Zone Art. '),'Zone [Ii]ndustrielle ','Z.I. '),' [Pp]ubli(c|que) ',' Publ. '),' [Pp]rofess(eur|ionnel(|le)) ',' Prof. '),' [Tt]echnologique ',' Techno. '),' [Pp]olyvalent ',' Polyv. '),'[EÉeé]tablissement(|s) ','Éts. '),' [Mm]unicipal(|e) ',' Munic. '),' [Dd]épartemental(|e) ',' Départ. '),' [Ii]ntercommunal(|le) ',' Interco. '),' [Rr]égional(|e) ',' Région. '),' [Ii]nterdépartemental(|e) ',' Interdép. '),' [Hh]ospitali(er|ère) ',' Hospit. '),' [EÉeé]lectrique ',' Élect. '),' [Ss]upérieur(|e) ',' Sup. '),'^[Bb][aâ]timent ','Bât. '),'[Aa]éronautique ','Aéron. ') $_$;

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


CREATE OR REPLACE FUNCTION fr_prenoms(text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace($1,
    '(Jean|John|Johann?)-([^0-9]*[a-z]$)','J–\2'),'Pierre-([^0-9]*[a-z]$)','P–\2'),
    'Marie-([^0-9]*[a-z]$)','M–\2'),'Anne-([^0-9]*[a-z]$)','A–\2'),
    '([^-])(Abel|Achille|Ad[eé]laïde|Adèle|Adeline|Adolphe|Adrien|Agathe|Agnès|Aimée?|Alain|Alberte?|Alexandr?e?r?|Alexis|Alfred|Alphonse|Ambroise|Amédée|Anatole|Andrée?|Angèle|Angela|Anselme|Anthelme|Antoine|Apolline|Aristide|Armand|Armel|Arthur|Astride|Athanase|Auban|Aubin|Aude|Auguste|Augustin|Aurèle|Amadeus) ([^0-9]*[a-z])','\1A. \3'),
    '([^-])(Bap?tiste|Barbe|Barnabé|Barthélemy|Basile|Benjamin|Benoîte?|Bérenger|Bernadette|Bernard|Bernardin|Bertille|Bibiane|Blaise|Bonaventure|Boniface|Boris|Brice|Brigitte|Bruno) ([^0-9]*[a-z])','\1B. \3'),
    '([^-])(Charles|Christine|Christophe|Christiane?|Chantal) ([^0-9]*[a-z])','\1Ch. \3'),
    '([^-])(Camille|Caroline|Casimir|Catherine|Cécile|Célestine?|Céline|César|Claire|Claude|Clément|Clotilde|Colette|Constant|Constantin|Corentin|Cyrille) ([^0-9]*[a-z])','\1C. \3'),
    '([^-])(Daniel|Danielle|David|Denise?|Désirée?|Didier|Dominique|Delano) ([^0-9]*[a-z])','\1D. \3'),
    '([^-])(Edith|Edgar|Edmonde?|Edmée?|Edouard|Édouard|Elisabeth|Elisée|Eloi|Éloi|Elsa|Emmanuel|Emmanuelle|Émile|Emile|Éric|Eric|Ernest|Estelle|Etienne|Étienne|Eugène) ([^0-9]*[a-z])','\1E. \3'),
    '([^-])(Fabien|Faustine|Ferdinand|Félix|Fernande?|Fiacre|Fidèle|Firmin|Florence|Florentin|Francis|Françoise?|Franck|Franklin|Frédéric|Frédérique|Fitzgerald) ([^0-9]*[a-z])','\1F. \3'),
    '([^-])(Gabriel|Gaétan|Gaston|Gatien|Gautier|Geneviève|Geoffroy|Georges?|Georgette|Gérald|Géraldine|Gérard|Germaine?|Gilberte?|Gildas|Gilles|Gladys|Grégoire|Guénolé|Guillaume|Gustave) ([^0-9]*[a-z])','\1G. \3'),
    '([^-])(Hector|Hélène|Henri|Henry|Herbert|Hervé|Hilaire|Hippolyte|Honorat|Honoré|Honorine|Hubert|Hugues) ([^0-9]*[a-z])','\1H. \3'),
    '([^-])(Ignace|Ingrid|Irène|Irénée|Isaac|Isidore) ([^0-9]*[a-z])','\1I. \3'),
    '([^-])(Jacques|Jacqueline|J[eo]an|Jeanne|Jérémie|Jérôme|Johann?|Joseph|Joséphine|Judicaël|Judith|Jules|Julien?|Julienne|Juliette|Juste|Justine?|John) ([^0-9]*[a-z])','\1J. \3'),
    '([^-])(Kevin|Karl) ([^0-9]*[a-z])','K\1. \3'),
    '([^-])(Lattre|Laurent|Laure|Léon|Léonard|Léonce|Lise|Louis|Louise|Louison|Lucie|Lucien|Ludwig) ([^0-9]*[a-z])','\1L. \3'),
    '([^-])(Madeleine|Marc|Marcel|Marcell?in|Marguerite|Maria|Marie|Marthe|Martial|Martine?|Maryse|Mathilde|Matthias|Matthieu|Maurice|Maxime|Maximilien|Michel|Michelle|Modeste|Monique) ([^0-9]*[a-z])','M. \3'),
    '([^-])(Narcisse|Nathalie|Nestor|Nicolas|Nino|Norbert) ([^0-9]*[a-z])','\1N. \3'),
    '([^-])(Odile|Olive|Olivier) ','\1O. \3'),
    '([^-])(Philibert|Philippe) ','\1Ph. \3'),
    '([^-])(Pablo|Pacôme|Parfait|Pascale?|Patrick|Paule?|Paulin|Pierre|Prosper) ([^0-9]*[a-z])','\1P. \3'),
    '([^-])(Quentin) ','Q. \3'),
    '([^-])(Ralph|Raoul|Raphaël|Raymond|Remi|Rémi|Régine|Renée?|Richard|Rita|Roberte?|Roger|Rolande?|Romain|Romuald|Rosa|Rosalie|Rose|Rosine) ([^0-9]*[a-z])','\1R. \3'),
    '([^-])(Sabine?|Salomé|Salomon|Salvador|Samson|Samuel|Sauveur|Sébastien|Serge|Sernin|Séverine?|Silvain|Simone?|Solange|Sophie|Stanislas|Stéphani?e|Suzanne|Sylvain|Sylvestre) ([^0-9]*[a-z])','\1S. \3'),
    '([^-])(Tanguy|Tatiana) ([^0-9]*[a-z])','\1T. \3'),
    '([^-])(Théodore|Thérèse|Thierry|Thomas) ([^0-9]*[a-z])','\1Th. \3'),
    '([^-])(Ulric|Ursule) ','\1U. \3'),
    '([^-])(Valentin|Valérie|Venceslas|Véronique|Victor|Vincent|Virgile|Vladimir) ([^0-9]*[a-z])','\1V. \3'),
    '([^-])(Youri|Yves|Yvette) ([^0-9]*[a-z])','\1Y. \3'),
    '([^-])(Waldeck|Winston|Wolfgang) ([^0-9]*[a-z])','\1W. \3'),
    '([^-])(Xavier) ([^0-9]*[a-z])','\1X. \3');
    $$;


-- création de la table des noms abrégés
CREATE TABLE IF NOT EXISTS abrev (long_name text, abrev_prenoms text, abrev text);
GRANT SELECT ON TABLE abrev TO PUBLIC;
CREATE UNIQUE INDEX IF NOT EXISTS abrev_index ON abrev (long_name);

-- remplissage de la table avec les odonymes des territoires français (8mn)
INSERT INTO abrev
SELECT
    l.name as long_name,
    fr_prenoms(l.name) as abrev_prenoms,
    null as abrev
FROM planet_osm_polygon p 
JOIN planet_osm_line l ON l.way && p.way
WHERE p.boundary= 'administrative' and p.admin_level='3'
    and (p.tags ? 'ref:INSEE'
        or p.name in ('France métropolitaine','Guadeloupe','Martinique','Mayotte','La Réunion','Guyane'))
    AND l.name is not null
    AND l.highway is not null
GROUP BY 1,2
ON CONFLICT DO NOTHING;

-- remplissage de la table avec les odonymes des pays francophones (2 mn)
INSERT INTO abrev
SELECT
    coalesce(l.tags->'name:fr',l.name) as long_name,
    fr_prenoms(coalesce(l.tags->'name:fr',l.name)) as abrev_prenoms,
    null as abrev
FROM planet_osm_polygon p 
JOIN planet_osm_line l ON l.way && p.way
WHERE p.boundary= 'administrative' and p.admin_level='2'
    and coalesce(p.tags->'name:fr', p.name) in ('Belgique','Bénin','Burkina Faso',E'Côte d\x027Ivoire', 'Gabon','Guinée','Mali','Monaco','Niger','Sénégal','Togo','Suisse')
    AND l.name is not null
    AND l.highway is not null
GROUP BY 1,2
ON CONFLICT DO NOTHING;


-- application des règles d'abréviation générales (2mn)
UPDATE abrev SET (abrev_prenoms, abrev) = (fr_abbrev(abrev_prenoms), fr_abbrev(long_name)) WHERE abrev IS NULL;

-- on ne garde que les noms abrégés
DELETE FROM abrev where long_name=abrev_prenoms and long_name=abrev;
VACUUM FULL ANALYZE abrev;
