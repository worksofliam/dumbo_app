**free

ctl-opt dftactgrp(*no);

dcl-pi P1304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1108.rpgleinc'
/copy 'qrpgleref/P585.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T993') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T993 LIMIT 1;

theCharVar = 'Hello from P1304';
dsply theCharVar;
P1108();
P585();
P68();
return;