**free

ctl-opt dftactgrp(*no);

dcl-pi P2412;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1396.rpgleinc'
/copy 'qrpgleref/P2359.rpgleinc'
/copy 'qrpgleref/P336.rpgleinc'

dcl-ds theTable extname('T456') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T456 LIMIT 1;

theCharVar = 'Hello from P2412';
dsply theCharVar;
P1396();
P2359();
P336();
return;