**free

ctl-opt dftactgrp(*no);

dcl-pi P2776;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'

dcl-ds theTable extname('T1265') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1265 LIMIT 1;

theCharVar = 'Hello from P2776';
dsply theCharVar;
P1136();
P1127();
P1768();
return;