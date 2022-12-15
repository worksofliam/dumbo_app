**free

ctl-opt dftactgrp(*no);

dcl-pi P3728;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2664.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P2102.rpgleinc'

dcl-ds theTable extname('T1202') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1202 LIMIT 1;

theCharVar = 'Hello from P3728';
dsply theCharVar;
P2664();
P646();
P2102();
return;