**free

ctl-opt dftactgrp(*no);

dcl-pi P174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P132.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T972') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T972 LIMIT 1;

theCharVar = 'Hello from P174';
dsply theCharVar;
P132();
P7();
P37();
return;