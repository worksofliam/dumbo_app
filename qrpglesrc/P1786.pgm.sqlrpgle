**free

ctl-opt dftactgrp(*no);

dcl-pi P1786;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P840.rpgleinc'

dcl-ds theTable extname('T423') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T423 LIMIT 1;

theCharVar = 'Hello from P1786';
dsply theCharVar;
P40();
P170();
P840();
return;