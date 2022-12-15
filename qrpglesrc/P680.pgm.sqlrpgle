**free

ctl-opt dftactgrp(*no);

dcl-pi P680;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P514.rpgleinc'
/copy 'qrpgleref/P524.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds theTable extname('T321') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T321 LIMIT 1;

theCharVar = 'Hello from P680';
dsply theCharVar;
P514();
P524();
P402();
return;