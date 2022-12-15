**free

ctl-opt dftactgrp(*no);

dcl-pi P5160;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2633.rpgleinc'
/copy 'qrpgleref/P1918.rpgleinc'
/copy 'qrpgleref/P4318.rpgleinc'

dcl-ds theTable extname('T604') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T604 LIMIT 1;

theCharVar = 'Hello from P5160';
dsply theCharVar;
P2633();
P1918();
P4318();
return;