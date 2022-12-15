**free

ctl-opt dftactgrp(*no);

dcl-pi P3694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3256.rpgleinc'
/copy 'qrpgleref/P1572.rpgleinc'
/copy 'qrpgleref/P691.rpgleinc'

dcl-ds theTable extname('T1821') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1821 LIMIT 1;

theCharVar = 'Hello from P3694';
dsply theCharVar;
P3256();
P1572();
P691();
return;