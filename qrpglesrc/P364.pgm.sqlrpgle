**free

ctl-opt dftactgrp(*no);

dcl-pi P364;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P299.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'
/copy 'qrpgleref/P175.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P364';
dsply theCharVar;
P299();
P140();
P175();
return;