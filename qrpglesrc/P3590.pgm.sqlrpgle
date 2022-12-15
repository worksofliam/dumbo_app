**free

ctl-opt dftactgrp(*no);

dcl-pi P3590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1954.rpgleinc'
/copy 'qrpgleref/P1710.rpgleinc'
/copy 'qrpgleref/P2345.rpgleinc'

dcl-ds theTable extname('T945') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T945 LIMIT 1;

theCharVar = 'Hello from P3590';
dsply theCharVar;
P1954();
P1710();
P2345();
return;