**free

ctl-opt dftactgrp(*no);

dcl-pi P1318;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P931.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P554.rpgleinc'

dcl-ds theTable extname('T1076') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1076 LIMIT 1;

theCharVar = 'Hello from P1318';
dsply theCharVar;
P931();
P160();
P554();
return;