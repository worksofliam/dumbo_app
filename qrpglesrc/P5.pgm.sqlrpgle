**free

ctl-opt dftactgrp(*no);

dcl-pi P5;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'

dcl-ds theTable extname('T241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T241 LIMIT 1;

theCharVar = 'Hello from P5';
dsply theCharVar;
P3();
P1();
return;