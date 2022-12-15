**free

ctl-opt dftactgrp(*no);

dcl-pi P2152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P2087.rpgleinc'
/copy 'qrpgleref/P1275.rpgleinc'

dcl-ds theTable extname('T574') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T574 LIMIT 1;

theCharVar = 'Hello from P2152';
dsply theCharVar;
P522();
P2087();
P1275();
return;