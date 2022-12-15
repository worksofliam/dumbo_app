**free

ctl-opt dftactgrp(*no);

dcl-pi P4380;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4222.rpgleinc'
/copy 'qrpgleref/P3898.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'

dcl-ds theTable extname('T1847') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1847 LIMIT 1;

theCharVar = 'Hello from P4380';
dsply theCharVar;
P4222();
P3898();
P126();
return;