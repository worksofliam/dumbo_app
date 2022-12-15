**free

ctl-opt dftactgrp(*no);

dcl-pi P3523;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3412.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'
/copy 'qrpgleref/P1161.rpgleinc'

dcl-ds theTable extname('T1786') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1786 LIMIT 1;

theCharVar = 'Hello from P3523';
dsply theCharVar;
P3412();
P639();
P1161();
return;