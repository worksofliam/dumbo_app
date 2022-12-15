**free

ctl-opt dftactgrp(*no);

dcl-pi P2835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P688.rpgleinc'
/copy 'qrpgleref/P506.rpgleinc'

dcl-ds theTable extname('T1081') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1081 LIMIT 1;

theCharVar = 'Hello from P2835';
dsply theCharVar;
P292();
P688();
P506();
return;