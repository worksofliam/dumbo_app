**free

ctl-opt dftactgrp(*no);

dcl-pi P116;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P116';
dsply theCharVar;
P32();
P60();
P0();
return;