**free

ctl-opt dftactgrp(*no);

dcl-pi P2959;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2268.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P943.rpgleinc'

dcl-ds theTable extname('T1023') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1023 LIMIT 1;

theCharVar = 'Hello from P2959';
dsply theCharVar;
P2268();
P755();
P943();
return;