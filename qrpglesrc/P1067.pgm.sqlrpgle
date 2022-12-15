**free

ctl-opt dftactgrp(*no);

dcl-pi P1067;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P454.rpgleinc'
/copy 'qrpgleref/P458.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'

dcl-ds theTable extname('T1390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1390 LIMIT 1;

theCharVar = 'Hello from P1067';
dsply theCharVar;
P454();
P458();
P503();
return;