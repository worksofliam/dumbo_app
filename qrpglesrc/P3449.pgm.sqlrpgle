**free

ctl-opt dftactgrp(*no);

dcl-pi P3449;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1667.rpgleinc'
/copy 'qrpgleref/P1727.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P3449';
dsply theCharVar;
P1667();
P1727();
P31();
return;