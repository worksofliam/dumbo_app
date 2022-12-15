**free

ctl-opt dftactgrp(*no);

dcl-pi P2223;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1184.rpgleinc'
/copy 'qrpgleref/P1264.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T1505') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1505 LIMIT 1;

theCharVar = 'Hello from P2223';
dsply theCharVar;
P1184();
P1264();
P103();
return;