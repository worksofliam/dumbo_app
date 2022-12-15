**free

ctl-opt dftactgrp(*no);

dcl-pi P292;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P274.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'

dcl-ds theTable extname('T160') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T160 LIMIT 1;

theCharVar = 'Hello from P292';
dsply theCharVar;
P274();
P78();
P14();
return;