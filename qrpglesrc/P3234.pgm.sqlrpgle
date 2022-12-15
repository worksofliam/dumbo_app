**free

ctl-opt dftactgrp(*no);

dcl-pi P3234;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2856.rpgleinc'
/copy 'qrpgleref/P2908.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds theTable extname('T1225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1225 LIMIT 1;

theCharVar = 'Hello from P3234';
dsply theCharVar;
P2856();
P2908();
P1669();
return;