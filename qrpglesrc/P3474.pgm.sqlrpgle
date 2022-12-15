**free

ctl-opt dftactgrp(*no);

dcl-pi P3474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2647.rpgleinc'
/copy 'qrpgleref/P2259.rpgleinc'
/copy 'qrpgleref/P1669.rpgleinc'

dcl-ds theTable extname('T387') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T387 LIMIT 1;

theCharVar = 'Hello from P3474';
dsply theCharVar;
P2647();
P2259();
P1669();
return;