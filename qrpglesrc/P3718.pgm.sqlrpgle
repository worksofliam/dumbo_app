**free

ctl-opt dftactgrp(*no);

dcl-pi P3718;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1956.rpgleinc'
/copy 'qrpgleref/P3454.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T1017') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1017 LIMIT 1;

theCharVar = 'Hello from P3718';
dsply theCharVar;
P1956();
P3454();
P352();
return;