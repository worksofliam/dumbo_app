**free

ctl-opt dftactgrp(*no);

dcl-pi P1266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P72.rpgleinc'
/copy 'qrpgleref/P1188.rpgleinc'
/copy 'qrpgleref/P42.rpgleinc'

dcl-ds theTable extname('T1370') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1370 LIMIT 1;

theCharVar = 'Hello from P1266';
dsply theCharVar;
P72();
P1188();
P42();
return;