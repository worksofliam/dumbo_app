**free

ctl-opt dftactgrp(*no);

dcl-pi P4242;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P191.rpgleinc'
/copy 'qrpgleref/P111.rpgleinc'
/copy 'qrpgleref/P970.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P4242';
dsply theCharVar;
P191();
P111();
P970();
return;