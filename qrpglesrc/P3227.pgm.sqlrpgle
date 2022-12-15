**free

ctl-opt dftactgrp(*no);

dcl-pi P3227;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P2939.rpgleinc'
/copy 'qrpgleref/P2485.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P3227';
dsply theCharVar;
P1466();
P2939();
P2485();
return;