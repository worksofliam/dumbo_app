**free

ctl-opt dftactgrp(*no);

dcl-pi P117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2.rpgleinc'
/copy 'qrpgleref/P81.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P117';
dsply theCharVar;
P2();
P81();
return;