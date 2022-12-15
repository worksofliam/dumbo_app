**free

ctl-opt dftactgrp(*no);

dcl-pi P3154;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2429.rpgleinc'
/copy 'qrpgleref/P1763.rpgleinc'
/copy 'qrpgleref/P3090.rpgleinc'

dcl-ds theTable extname('T857') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T857 LIMIT 1;

theCharVar = 'Hello from P3154';
dsply theCharVar;
P2429();
P1763();
P3090();
return;