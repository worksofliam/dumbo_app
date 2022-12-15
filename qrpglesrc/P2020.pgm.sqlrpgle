**free

ctl-opt dftactgrp(*no);

dcl-pi P2020;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1192.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'

dcl-ds T756 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T756 FROM T756 LIMIT 1;

theCharVar = 'Hello from P2020';
dsply theCharVar;
P1192();
P316();
P1135();
return;