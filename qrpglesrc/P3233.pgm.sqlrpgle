**free

ctl-opt dftactgrp(*no);

dcl-pi P3233;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2146.rpgleinc'
/copy 'qrpgleref/P3212.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'

dcl-ds theTable extname('T769') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T769 LIMIT 1;

theCharVar = 'Hello from P3233';
dsply theCharVar;
P2146();
P3212();
P102();
return;