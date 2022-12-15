**free

ctl-opt dftactgrp(*no);

dcl-pi P3908;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1553.rpgleinc'
/copy 'qrpgleref/P3797.rpgleinc'
/copy 'qrpgleref/P1205.rpgleinc'

dcl-ds theTable extname('T1565') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1565 LIMIT 1;

theCharVar = 'Hello from P3908';
dsply theCharVar;
P1553();
P3797();
P1205();
return;