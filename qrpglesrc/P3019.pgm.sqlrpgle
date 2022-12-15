**free

ctl-opt dftactgrp(*no);

dcl-pi P3019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2656.rpgleinc'
/copy 'qrpgleref/P1130.rpgleinc'
/copy 'qrpgleref/P486.rpgleinc'

dcl-ds theTable extname('T1489') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1489 LIMIT 1;

theCharVar = 'Hello from P3019';
dsply theCharVar;
P2656();
P1130();
P486();
return;