**free

ctl-opt dftactgrp(*no);

dcl-pi P2301;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P1889.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'

dcl-ds theTable extname('T1546') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1546 LIMIT 1;

theCharVar = 'Hello from P2301';
dsply theCharVar;
P288();
P1889();
P1255();
return;