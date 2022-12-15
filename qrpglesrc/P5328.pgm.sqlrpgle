**free

ctl-opt dftactgrp(*no);

dcl-pi P5328;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2004.rpgleinc'
/copy 'qrpgleref/P2180.rpgleinc'
/copy 'qrpgleref/P2425.rpgleinc'

dcl-ds theTable extname('T432') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T432 LIMIT 1;

theCharVar = 'Hello from P5328';
dsply theCharVar;
P2004();
P2180();
P2425();
return;