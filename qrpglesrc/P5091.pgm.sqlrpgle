**free

ctl-opt dftactgrp(*no);

dcl-pi P5091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P600.rpgleinc'
/copy 'qrpgleref/P3746.rpgleinc'
/copy 'qrpgleref/P1677.rpgleinc'

dcl-ds theTable extname('T360') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T360 LIMIT 1;

theCharVar = 'Hello from P5091';
dsply theCharVar;
P600();
P3746();
P1677();
return;