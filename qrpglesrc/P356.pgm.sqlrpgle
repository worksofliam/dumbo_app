**free

ctl-opt dftactgrp(*no);

dcl-pi P356;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'

dcl-ds theTable extname('T526') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T526 LIMIT 1;

theCharVar = 'Hello from P356';
dsply theCharVar;
P311();
P20();
P58();
return;