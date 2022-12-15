**free

ctl-opt dftactgrp(*no);

dcl-pi P5582;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4300.rpgleinc'
/copy 'qrpgleref/P2086.rpgleinc'
/copy 'qrpgleref/P2840.rpgleinc'

dcl-ds theTable extname('T920') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T920 LIMIT 1;

theCharVar = 'Hello from P5582';
dsply theCharVar;
P4300();
P2086();
P2840();
return;