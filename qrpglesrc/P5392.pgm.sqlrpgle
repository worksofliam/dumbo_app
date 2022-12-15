**free

ctl-opt dftactgrp(*no);

dcl-pi P5392;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3562.rpgleinc'
/copy 'qrpgleref/P2760.rpgleinc'
/copy 'qrpgleref/P1684.rpgleinc'

dcl-ds theTable extname('T994') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T994 LIMIT 1;

theCharVar = 'Hello from P5392';
dsply theCharVar;
P3562();
P2760();
P1684();
return;