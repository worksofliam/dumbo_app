**free

ctl-opt dftactgrp(*no);

dcl-pi P233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P156.rpgleinc'
/copy 'qrpgleref/P100.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P233';
dsply theCharVar;
P229();
P156();
P100();
return;