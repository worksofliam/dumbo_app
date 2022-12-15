**free

ctl-opt dftactgrp(*no);

dcl-pi P2835;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P101.rpgleinc'
/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P2111.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P2835';
dsply theCharVar;
P101();
P165();
P2111();
return;