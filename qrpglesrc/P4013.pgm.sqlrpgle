**free

ctl-opt dftactgrp(*no);

dcl-pi P4013;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2591.rpgleinc'
/copy 'qrpgleref/P1770.rpgleinc'
/copy 'qrpgleref/P2330.rpgleinc'

dcl-ds theTable extname('T1416') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1416 LIMIT 1;

theCharVar = 'Hello from P4013';
dsply theCharVar;
P2591();
P1770();
P2330();
return;