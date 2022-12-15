**free

ctl-opt dftactgrp(*no);

dcl-pi P896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'

dcl-ds theTable extname('T111') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T111 LIMIT 1;

theCharVar = 'Hello from P896';
dsply theCharVar;
P661();
P507();
P603();
return;