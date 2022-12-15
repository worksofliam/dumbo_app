**free

ctl-opt dftactgrp(*no);

dcl-pi P5465;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1232.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'
/copy 'qrpgleref/P3440.rpgleinc'

dcl-ds theTable extname('T1129') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1129 LIMIT 1;

theCharVar = 'Hello from P5465';
dsply theCharVar;
P1232();
P241();
P3440();
return;