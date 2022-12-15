**free

ctl-opt dftactgrp(*no);

dcl-pi P1337;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P860.rpgleinc'
/copy 'qrpgleref/P416.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds theTable extname('T396') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T396 LIMIT 1;

theCharVar = 'Hello from P1337';
dsply theCharVar;
P860();
P416();
P1173();
return;