**free

ctl-opt dftactgrp(*no);

dcl-pi P5320;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P758.rpgleinc'
/copy 'qrpgleref/P1222.rpgleinc'
/copy 'qrpgleref/P392.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P5320';
dsply theCharVar;
P758();
P1222();
P392();
return;