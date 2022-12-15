**free

ctl-opt dftactgrp(*no);

dcl-pi P3474;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P3430.rpgleinc'
/copy 'qrpgleref/P843.rpgleinc'

dcl-ds theTable extname('T1496') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1496 LIMIT 1;

theCharVar = 'Hello from P3474';
dsply theCharVar;
P762();
P3430();
P843();
return;