**free

ctl-opt dftactgrp(*no);

dcl-pi P5214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4739.rpgleinc'
/copy 'qrpgleref/P3278.rpgleinc'
/copy 'qrpgleref/P1517.rpgleinc'

dcl-ds theTable extname('T764') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T764 LIMIT 1;

theCharVar = 'Hello from P5214';
dsply theCharVar;
P4739();
P3278();
P1517();
return;