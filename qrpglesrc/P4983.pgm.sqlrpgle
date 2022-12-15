**free

ctl-opt dftactgrp(*no);

dcl-pi P4983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4424.rpgleinc'
/copy 'qrpgleref/P4632.rpgleinc'
/copy 'qrpgleref/P4880.rpgleinc'

dcl-ds theTable extname('T558') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T558 LIMIT 1;

theCharVar = 'Hello from P4983';
dsply theCharVar;
P4424();
P4632();
P4880();
return;