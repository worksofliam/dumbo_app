**free

ctl-opt dftactgrp(*no);

dcl-pi P2612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2408.rpgleinc'
/copy 'qrpgleref/P158.rpgleinc'
/copy 'qrpgleref/P1706.rpgleinc'

dcl-ds theTable extname('T403') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T403 LIMIT 1;

theCharVar = 'Hello from P2612';
dsply theCharVar;
P2408();
P158();
P1706();
return;