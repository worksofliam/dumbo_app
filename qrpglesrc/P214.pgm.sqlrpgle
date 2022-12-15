**free

ctl-opt dftactgrp(*no);

dcl-pi P214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T763') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T763 LIMIT 1;

theCharVar = 'Hello from P214';
dsply theCharVar;
P159();
P5();
P74();
return;