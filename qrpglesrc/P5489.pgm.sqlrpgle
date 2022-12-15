**free

ctl-opt dftactgrp(*no);

dcl-pi P5489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1429.rpgleinc'
/copy 'qrpgleref/P2968.rpgleinc'
/copy 'qrpgleref/P3130.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P5489';
dsply theCharVar;
P1429();
P2968();
P3130();
return;