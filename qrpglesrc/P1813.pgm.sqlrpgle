**free

ctl-opt dftactgrp(*no);

dcl-pi P1813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1448.rpgleinc'
/copy 'qrpgleref/P60.rpgleinc'
/copy 'qrpgleref/P1546.rpgleinc'

dcl-ds theTable extname('T902') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T902 LIMIT 1;

theCharVar = 'Hello from P1813';
dsply theCharVar;
P1448();
P60();
P1546();
return;