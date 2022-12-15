**free

ctl-opt dftactgrp(*no);

dcl-pi P3174;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2996.rpgleinc'
/copy 'qrpgleref/P517.rpgleinc'
/copy 'qrpgleref/P344.rpgleinc'

dcl-ds theTable extname('T1064') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1064 LIMIT 1;

theCharVar = 'Hello from P3174';
dsply theCharVar;
P2996();
P517();
P344();
return;