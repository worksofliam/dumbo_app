**free

ctl-opt dftactgrp(*no);

dcl-pi P822;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P217.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'
/copy 'qrpgleref/P608.rpgleinc'

dcl-ds theTable extname('T304') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T304 LIMIT 1;

theCharVar = 'Hello from P822';
dsply theCharVar;
P217();
P265();
P608();
return;