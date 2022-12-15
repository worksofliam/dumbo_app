**free

ctl-opt dftactgrp(*no);

dcl-pi P333;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'

dcl-ds theTable extname('T356') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T356 LIMIT 1;

theCharVar = 'Hello from P333';
dsply theCharVar;
P316();
P96();
P113();
return;