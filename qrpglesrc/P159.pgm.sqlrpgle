**free

ctl-opt dftactgrp(*no);

dcl-pi P159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P20.rpgleinc'
/copy 'qrpgleref/P83.rpgleinc'
/copy 'qrpgleref/P65.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P159';
dsply theCharVar;
P20();
P83();
P65();
return;