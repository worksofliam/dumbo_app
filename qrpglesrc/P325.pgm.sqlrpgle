**free

ctl-opt dftactgrp(*no);

dcl-pi P325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P135.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'

dcl-ds theTable extname('T1134') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1134 LIMIT 1;

theCharVar = 'Hello from P325';
dsply theCharVar;
P135();
P100();
P30();
return;