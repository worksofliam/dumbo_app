**free

ctl-opt dftactgrp(*no);

dcl-pi P3303;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P963.rpgleinc'
/copy 'qrpgleref/P1899.rpgleinc'
/copy 'qrpgleref/P1113.rpgleinc'

dcl-ds theTable extname('T1093') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1093 LIMIT 1;

theCharVar = 'Hello from P3303';
dsply theCharVar;
P963();
P1899();
P1113();
return;