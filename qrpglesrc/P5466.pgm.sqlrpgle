**free

ctl-opt dftactgrp(*no);

dcl-pi P5466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3555.rpgleinc'
/copy 'qrpgleref/P4258.rpgleinc'
/copy 'qrpgleref/P546.rpgleinc'

dcl-ds theTable extname('T1602') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1602 LIMIT 1;

theCharVar = 'Hello from P5466';
dsply theCharVar;
P3555();
P4258();
P546();
return;