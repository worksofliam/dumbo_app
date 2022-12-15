**free

ctl-opt dftactgrp(*no);

dcl-pi P1035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P991.rpgleinc'
/copy 'qrpgleref/P931.rpgleinc'
/copy 'qrpgleref/P20.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P1035';
dsply theCharVar;
P991();
P931();
P20();
return;