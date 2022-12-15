**free

ctl-opt dftactgrp(*no);

dcl-pi P5540;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1217.rpgleinc'
/copy 'qrpgleref/P3187.rpgleinc'
/copy 'qrpgleref/P2896.rpgleinc'

dcl-ds theTable extname('T230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T230 LIMIT 1;

theCharVar = 'Hello from P5540';
dsply theCharVar;
P1217();
P3187();
P2896();
return;