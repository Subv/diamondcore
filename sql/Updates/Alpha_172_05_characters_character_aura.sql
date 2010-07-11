

alter table `character_aura` drop primary key;
alter table `character_aura` add primary key (`guid`,`spell`);
