**free

ctl-opt dftactgrp(*no);

dcl-pi P4186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2081.rpgleinc'
/copy 'qrpgleref/P2406.rpgleinc'
/copy 'qrpgleref/P1393.rpgleinc'

dcl-ds theTable extname('T571') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T571 LIMIT 1;

theCharVar = 'Hello from P4186';
dsply theCharVar;
P2081();
P2406();
P1393();
return;