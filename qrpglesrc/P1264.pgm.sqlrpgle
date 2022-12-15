**free

ctl-opt dftactgrp(*no);

dcl-pi P1264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'

dcl-ds T486 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T486 FROM T486 LIMIT 1;

theCharVar = 'Hello from P1264';
dsply theCharVar;
P191();
P124();
P1223();
return;