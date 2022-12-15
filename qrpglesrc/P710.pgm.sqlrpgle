**free

ctl-opt dftactgrp(*no);

dcl-pi P710;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P391.rpgleinc'
/copy 'qrpgleref/P696.rpgleinc'
/copy 'qrpgleref/P682.rpgleinc'

dcl-ds theTable extname('T1027') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1027 LIMIT 1;

theCharVar = 'Hello from P710';
dsply theCharVar;
P391();
P696();
P682();
return;