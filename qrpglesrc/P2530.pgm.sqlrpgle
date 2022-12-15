**free

ctl-opt dftactgrp(*no);

dcl-pi P2530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1282.rpgleinc'
/copy 'qrpgleref/P627.rpgleinc'
/copy 'qrpgleref/P2170.rpgleinc'

dcl-ds T1235 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1235 FROM T1235 LIMIT 1;

theCharVar = 'Hello from P2530';
dsply theCharVar;
P1282();
P627();
P2170();
return;