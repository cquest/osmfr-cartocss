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


CREATE OR REPLACE FUNCTION fr_prenoms(text) RETURNS text
    LANGUAGE sql IMMUTABLE PARALLEL SAFE
    AS $$ select regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(
regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace(regexp_replace($1,
    '(Jean|John|Johann?)-','J-'),'Pierre-','P-'),
    'Marie-','M-'),'Anne-','A-'),
    '(Abel|Achille|Adélaïde|Adèle|Adeline|Adrien|Agathe|Agnès|Aimée?|Alain|Alberte?|Alexandre|Alexis|Alfred|Alphonse|Ambroise|Anatole|Andrée?|Angèle|Anselme|Anthelme|Antoine|Apolline|Aristide|Armand|Armel|Arthur|Astride|Athanase|Auban|Aubin|Aude|Auguste|Augustin|Aurèle|Amadeus) ','A. '),
    '(Bap?tiste|Barbe|Barnabé|Barthélemy|Basile|Benjamin|Benoîte?|Bérenger|Bernadette|Bernard|Bernardin|Bertille|Bibiane|Blaise|Bonaventure|Boniface|Boris|Brice|Brigitte|Bruno) ','B. '),
    '(Charles|Christine|Christophe|Christiane?|Chantal) ','Ch. '),
    '(Camille|Caroline|Casimir|Catherine|Cécile|Célestine?|Céline|Claire|Claude|Clément|Clotilde|Colette|Constant|Constantin|Corentin|Cyrille) ','C. '),
    '(Daniel|Danielle|David|Denise?|Désirée?|Didier|Dominique|Delano) ','D. '),
    '(Edith|Edgar|Edmond|Edmée|Edouard|Édouard|Elisabeth|Elisée|Eloi|Éloi|Emmanuel|Emmanuelle|Émile|Emile|Éric|Eric|Ernest|Estelle|Etienne|Étienne|Eugène) ','E. '),
    '(Fabien|Faustine|Ferdinand|Félix|Fernande?|Fiacre|Fidèle|Firmin|Florence|Florentin|Françoise?|Franck|Franklin|Frédéric|Frédérique|Fitzgerald) ','F. '),
    '(Gabriel|Gaétan|Gaston|Gatien|Gautier|Geneviève|Geoffroy|Georges?|Georgette|Gérald|Gérard|Germaine?|Gilberte?|Gildas|Gilles|Gladys|Grégoire|Guénolé|Guillaume|Gustave) ','G. '),
    '(Hélène|Henri|Henry|Herbert|Hervé|Hilaire|Hippolyte|Honorat|Honoré|Honorine|Hubert|Hugues) ','H. '),
    '(Ignace|Ingrid|Irène|Irénée|Isaac|Isidore) ','I. '),
    '(Jacques|Jean|Jeanne|Jérémie|Jérôme|Joseph|Joséphine|Judicaël|Judith|Jules|Julien?|Julienne|Juliette|Justine?|John) ','J. '),
    '(Kevin|Karl) ','K. '),
    '(Lattre|Laurent|Laure|Léon|Léonard|Léonce|Lise|Louis|Louise|Lucie|Lucien|Ludwig) ','L. '),
    '(Madeleine|Marc|Marcel|Marcell?in|Marguerite|Maria|Marie|Marthe|Martial|Martine?|Maryse|Mathilde|Matthias|Matthieu|Maurice|Maxime|Maximilien|Michel|Michelle|Modeste|Monique) ','M. '),
    '(Narcisse|Nathalie|Nestor|Nicolas|Nino|Norbert) ','N. '),
    '(Odile|Olive|Olivier) ','O. '),
    '(Philibert|Philippe) ','Ph. '),
    '(Pablo|Pacôme|Parfait|Pascale?|Patrick|Paule?|Paulin|Pierre|Prosper) ','P. '),
    '(Quentin) ','Q. '),
    '(Ralph|Raoul|Raphaël|Raymond|Remi|Rémi|Renée?|Richard|Rita|Roberte?|Roger|Romain|Romuald|Rosa|Rosalie|Rose|Rosine) ','R. '),
    '(Sabine?|Salomé|Samson|Sébastien|Serge|Sernin|Séverine?|Silvain|Simone?|Solange|Sophie|Stanislas|Stéphani?e|Suzanne|Sylvain|Sylvestre) ','S. '),
    '(Tanguy|Tatiana|Théodore|Thérèse|Thierry|Thomas) ','T. '),
    '(Ulric|Ursule) ','U. '),
    '(Valentin|Valérie|Venceslas|Véronique|Victor|Vincent|Virgile) ','V. '),
    '(Yves|Yvette) ','Y. '),
    '(Waldeck|Wolfgang) ','W. '),
    '(Xavier) ','X. ');
    $$;
