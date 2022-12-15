**free

ctl-opt dftactgrp(*no);

dcl-pi P5030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1635.rpgleinc'
/copy 'qrpgleref/P4520.rpgleinc'
/copy 'qrpgleref/P1789.rpgleinc'

dcl-ds theTable extname('T1036') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1036 LIMIT 1;

theCharVar = 'Hello from P5030';
dsply theCharVar;
P1635();
P4520();
P1789();
return;