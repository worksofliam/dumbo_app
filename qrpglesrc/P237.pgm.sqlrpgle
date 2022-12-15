**free

ctl-opt dftactgrp(*no);

dcl-pi P237;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P174.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T1390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1390 LIMIT 1;

theCharVar = 'Hello from P237';
dsply theCharVar;
P123();
P174();
P161();
return;