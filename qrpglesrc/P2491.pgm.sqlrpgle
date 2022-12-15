**free

ctl-opt dftactgrp(*no);

dcl-pi P2491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P1679.rpgleinc'
/copy 'qrpgleref/P1777.rpgleinc'

dcl-ds theTable extname('T1008') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1008 LIMIT 1;

theCharVar = 'Hello from P2491';
dsply theCharVar;
P935();
P1679();
P1777();
return;