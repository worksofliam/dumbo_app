**free

ctl-opt dftactgrp(*no);

dcl-pi P2969;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'

dcl-ds theTable extname('T1232') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1232 LIMIT 1;

theCharVar = 'Hello from P2969';
dsply theCharVar;
P724();
P2048();
P268();
return;