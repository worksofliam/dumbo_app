**free

ctl-opt dftactgrp(*no);

dcl-pi P3863;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3378.rpgleinc'
/copy 'qrpgleref/P2068.rpgleinc'
/copy 'qrpgleref/P1921.rpgleinc'

dcl-ds T1097 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1097 FROM T1097 LIMIT 1;

theCharVar = 'Hello from P3863';
dsply theCharVar;
P3378();
P2068();
P1921();
return;