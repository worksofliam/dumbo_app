**free

ctl-opt dftactgrp(*no);

dcl-pi P979;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P632.rpgleinc'
/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T1476') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1476 LIMIT 1;

theCharVar = 'Hello from P979';
dsply theCharVar;
P632();
P797();
P98();
return;