**free

ctl-opt dftactgrp(*no);

dcl-pi P1971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P1580.rpgleinc'
/copy 'qrpgleref/P1796.rpgleinc'

dcl-ds theTable extname('T1072') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1072 LIMIT 1;

theCharVar = 'Hello from P1971';
dsply theCharVar;
P73();
P1580();
P1796();
return;