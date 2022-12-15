**free

ctl-opt dftactgrp(*no);

dcl-pi P5111;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2419.rpgleinc'
/copy 'qrpgleref/P3082.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T31') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T31 LIMIT 1;

theCharVar = 'Hello from P5111';
dsply theCharVar;
P2419();
P3082();
P533();
return;