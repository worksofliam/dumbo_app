**free

ctl-opt dftactgrp(*no);

dcl-pi P1122;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'
/copy 'qrpgleref/P430.rpgleinc'

dcl-ds theTable extname('T384') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T384 LIMIT 1;

theCharVar = 'Hello from P1122';
dsply theCharVar;
P442();
P572();
P430();
return;