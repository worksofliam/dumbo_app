**free

ctl-opt dftactgrp(*no);

dcl-pi P1508;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P1026.rpgleinc'
/copy 'qrpgleref/P1321.rpgleinc'

dcl-ds theTable extname('T316') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T316 LIMIT 1;

theCharVar = 'Hello from P1508';
dsply theCharVar;
P225();
P1026();
P1321();
return;