**free

ctl-opt dftactgrp(*no);

dcl-pi P3009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1268.rpgleinc'
/copy 'qrpgleref/P2282.rpgleinc'
/copy 'qrpgleref/P1151.rpgleinc'

dcl-ds theTable extname('T1215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1215 LIMIT 1;

theCharVar = 'Hello from P3009';
dsply theCharVar;
P1268();
P2282();
P1151();
return;