**free

ctl-opt dftactgrp(*no);

dcl-pi P5483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4191.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'

dcl-ds theTable extname('T1772') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1772 LIMIT 1;

theCharVar = 'Hello from P5483';
dsply theCharVar;
P4191();
P100();
P1679();
return;