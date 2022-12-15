**free

ctl-opt dftactgrp(*no);

dcl-pi P4300;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P4084.rpgleinc'
/copy 'qrpgleref/P2221.rpgleinc'

dcl-ds theTable extname('T1507') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1507 LIMIT 1;

theCharVar = 'Hello from P4300';
dsply theCharVar;
P233();
P4084();
P2221();
return;