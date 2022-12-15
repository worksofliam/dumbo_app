**free

ctl-opt dftactgrp(*no);

dcl-pi P1982;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P760.rpgleinc'
/copy 'qrpgleref/P1308.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P1982';
dsply theCharVar;
P760();
P1308();
P1024();
return;