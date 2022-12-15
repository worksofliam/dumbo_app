**free

ctl-opt dftactgrp(*no);

dcl-pi P381;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P265.rpgleinc'

dcl-ds theTable extname('T1867') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1867 LIMIT 1;

theCharVar = 'Hello from P381';
dsply theCharVar;
P54();
P164();
P265();
return;