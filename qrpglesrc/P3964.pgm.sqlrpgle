**free

ctl-opt dftactgrp(*no);

dcl-pi P3964;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1254.rpgleinc'
/copy 'qrpgleref/P973.rpgleinc'
/copy 'qrpgleref/P3469.rpgleinc'

dcl-ds theTable extname('T1095') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1095 LIMIT 1;

theCharVar = 'Hello from P3964';
dsply theCharVar;
P1254();
P973();
P3469();
return;