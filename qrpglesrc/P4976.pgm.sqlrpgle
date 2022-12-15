**free

ctl-opt dftactgrp(*no);

dcl-pi P4976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3287.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P2430.rpgleinc'

dcl-ds theTable extname('T1696') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1696 LIMIT 1;

theCharVar = 'Hello from P4976';
dsply theCharVar;
P3287();
P761();
P2430();
return;