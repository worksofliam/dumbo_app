**free

ctl-opt dftactgrp(*no);

dcl-pi P2576;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2160.rpgleinc'
/copy 'qrpgleref/P2350.rpgleinc'
/copy 'qrpgleref/P2535.rpgleinc'

dcl-ds theTable extname('T409') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T409 LIMIT 1;

theCharVar = 'Hello from P2576';
dsply theCharVar;
P2160();
P2350();
P2535();
return;