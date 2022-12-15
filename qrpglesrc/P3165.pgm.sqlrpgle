**free

ctl-opt dftactgrp(*no);

dcl-pi P3165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1720.rpgleinc'
/copy 'qrpgleref/P1156.rpgleinc'
/copy 'qrpgleref/P2598.rpgleinc'

dcl-ds theTable extname('T70') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T70 LIMIT 1;

theCharVar = 'Hello from P3165';
dsply theCharVar;
P1720();
P1156();
P2598();
return;