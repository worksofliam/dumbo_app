**free

ctl-opt dftactgrp(*no);

dcl-pi P3957;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2987.rpgleinc'
/copy 'qrpgleref/P3207.rpgleinc'
/copy 'qrpgleref/P2201.rpgleinc'

dcl-ds theTable extname('T604') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T604 LIMIT 1;

theCharVar = 'Hello from P3957';
dsply theCharVar;
P2987();
P3207();
P2201();
return;