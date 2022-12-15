**free

ctl-opt dftactgrp(*no);

dcl-pi P3289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2880.rpgleinc'
/copy 'qrpgleref/P926.rpgleinc'
/copy 'qrpgleref/P2043.rpgleinc'

dcl-ds theTable extname('T862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T862 LIMIT 1;

theCharVar = 'Hello from P3289';
dsply theCharVar;
P2880();
P926();
P2043();
return;