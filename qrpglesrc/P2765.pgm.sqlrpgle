**free

ctl-opt dftactgrp(*no);

dcl-pi P2765;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1625.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P1656.rpgleinc'

dcl-ds theTable extname('T1001') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1001 LIMIT 1;

theCharVar = 'Hello from P2765';
dsply theCharVar;
P1625();
P1026();
P1656();
return;