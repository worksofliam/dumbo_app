**free

ctl-opt dftactgrp(*no);

dcl-pi P5075;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P39.rpgleinc'
/copy 'qrpgleref/P4172.rpgleinc'
/copy 'qrpgleref/P3667.rpgleinc'

dcl-ds theTable extname('T1592') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1592 LIMIT 1;

theCharVar = 'Hello from P5075';
dsply theCharVar;
P39();
P4172();
P3667();
return;