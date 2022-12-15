**free

ctl-opt dftactgrp(*no);

dcl-pi P2939;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1191.rpgleinc'
/copy 'qrpgleref/P1586.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'

dcl-ds theTable extname('T1024') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1024 LIMIT 1;

theCharVar = 'Hello from P2939';
dsply theCharVar;
P1191();
P1586();
P966();
return;