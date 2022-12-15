**free

ctl-opt dftactgrp(*no);

dcl-pi P4264;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P564.rpgleinc'
/copy 'qrpgleref/P3250.rpgleinc'
/copy 'qrpgleref/P68.rpgleinc'

dcl-ds theTable extname('T1390') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1390 LIMIT 1;

theCharVar = 'Hello from P4264';
dsply theCharVar;
P564();
P3250();
P68();
return;