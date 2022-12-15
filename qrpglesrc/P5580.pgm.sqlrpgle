**free

ctl-opt dftactgrp(*no);

dcl-pi P5580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2444.rpgleinc'
/copy 'qrpgleref/P3067.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'

dcl-ds theTable extname('T808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T808 LIMIT 1;

theCharVar = 'Hello from P5580';
dsply theCharVar;
P2444();
P3067();
P51();
return;