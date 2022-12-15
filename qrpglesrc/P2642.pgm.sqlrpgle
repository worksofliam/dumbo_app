**free

ctl-opt dftactgrp(*no);

dcl-pi P2642;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P1630.rpgleinc'
/copy 'qrpgleref/P1258.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P2642';
dsply theCharVar;
P372();
P1630();
P1258();
return;