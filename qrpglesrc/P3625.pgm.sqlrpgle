**free

ctl-opt dftactgrp(*no);

dcl-pi P3625;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P3568.rpgleinc'
/copy 'qrpgleref/P2779.rpgleinc'

dcl-ds T456 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T456 FROM T456 LIMIT 1;

theCharVar = 'Hello from P3625';
dsply theCharVar;
P1192();
P3568();
P2779();
return;