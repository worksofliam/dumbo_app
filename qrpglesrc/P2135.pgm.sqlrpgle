**free

ctl-opt dftactgrp(*no);

dcl-pi P2135;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P867.rpgleinc'
/copy 'qrpgleref/P1917.rpgleinc'
/copy 'qrpgleref/P1267.rpgleinc'

dcl-ds theTable extname('T250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T250 LIMIT 1;

theCharVar = 'Hello from P2135';
dsply theCharVar;
P867();
P1917();
P1267();
return;