**free

ctl-opt dftactgrp(*no);

dcl-pi P2534;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P346.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P1752.rpgleinc'

dcl-ds theTable extname('T848') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T848 LIMIT 1;

theCharVar = 'Hello from P2534';
dsply theCharVar;
P346();
P439();
P1752();
return;