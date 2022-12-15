**free

ctl-opt dftactgrp(*no);

dcl-pi P3378;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1088.rpgleinc'
/copy 'qrpgleref/P1052.rpgleinc'
/copy 'qrpgleref/P1513.rpgleinc'

dcl-ds theTable extname('T1193') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1193 LIMIT 1;

theCharVar = 'Hello from P3378';
dsply theCharVar;
P1088();
P1052();
P1513();
return;