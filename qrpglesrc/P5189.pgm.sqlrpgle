**free

ctl-opt dftactgrp(*no);

dcl-pi P5189;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1664.rpgleinc'
/copy 'qrpgleref/P4429.rpgleinc'
/copy 'qrpgleref/P3701.rpgleinc'

dcl-ds theTable extname('T1491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1491 LIMIT 1;

theCharVar = 'Hello from P5189';
dsply theCharVar;
P1664();
P4429();
P3701();
return;