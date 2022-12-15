**free

ctl-opt dftactgrp(*no);

dcl-pi P2895;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2190.rpgleinc'
/copy 'qrpgleref/P1280.rpgleinc'
/copy 'qrpgleref/P1694.rpgleinc'

dcl-ds theTable extname('T999') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T999 LIMIT 1;

theCharVar = 'Hello from P2895';
dsply theCharVar;
P2190();
P1280();
P1694();
return;