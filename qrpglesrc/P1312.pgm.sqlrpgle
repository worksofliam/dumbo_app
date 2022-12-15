**free

ctl-opt dftactgrp(*no);

dcl-pi P1312;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1122.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'
/copy 'qrpgleref/P438.rpgleinc'

dcl-ds theTable extname('T19') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T19 LIMIT 1;

theCharVar = 'Hello from P1312';
dsply theCharVar;
P1122();
P89();
P438();
return;