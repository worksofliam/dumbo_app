**free

ctl-opt dftactgrp(*no);

dcl-pi P5283;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P777.rpgleinc'
/copy 'qrpgleref/P3063.rpgleinc'
/copy 'qrpgleref/P1693.rpgleinc'

dcl-ds theTable extname('T697') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T697 LIMIT 1;

theCharVar = 'Hello from P5283';
dsply theCharVar;
P777();
P3063();
P1693();
return;