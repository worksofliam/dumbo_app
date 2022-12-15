**free

ctl-opt dftactgrp(*no);

dcl-pi P1124;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P996.rpgleinc'
/copy 'qrpgleref/P941.rpgleinc'
/copy 'qrpgleref/P317.rpgleinc'

dcl-ds theTable extname('T466') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T466 LIMIT 1;

theCharVar = 'Hello from P1124';
dsply theCharVar;
P996();
P941();
P317();
return;