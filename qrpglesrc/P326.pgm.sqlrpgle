**free

ctl-opt dftactgrp(*no);

dcl-pi P326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P206.rpgleinc'
/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P64.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P326';
dsply theCharVar;
P206();
P28();
P64();
return;