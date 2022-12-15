**free

ctl-opt dftactgrp(*no);

dcl-pi P1980;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1583.rpgleinc'
/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P1931.rpgleinc'

dcl-ds theTable extname('T1570') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1570 LIMIT 1;

theCharVar = 'Hello from P1980';
dsply theCharVar;
P1583();
P840();
P1931();
return;