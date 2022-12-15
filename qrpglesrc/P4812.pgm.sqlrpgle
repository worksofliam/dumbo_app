**free

ctl-opt dftactgrp(*no);

dcl-pi P4812;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4706.rpgleinc'
/copy 'qrpgleref/P1136.rpgleinc'
/copy 'qrpgleref/P4039.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P4812';
dsply theCharVar;
P4706();
P1136();
P4039();
return;