**free

ctl-opt dftactgrp(*no);

dcl-pi P4493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1563.rpgleinc'
/copy 'qrpgleref/P129.rpgleinc'
/copy 'qrpgleref/P3949.rpgleinc'

dcl-ds theTable extname('T1153') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1153 LIMIT 1;

theCharVar = 'Hello from P4493';
dsply theCharVar;
P1563();
P129();
P3949();
return;