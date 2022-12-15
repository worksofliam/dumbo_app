**free

ctl-opt dftactgrp(*no);

dcl-pi P2091;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P734.rpgleinc'
/copy 'qrpgleref/P2012.rpgleinc'
/copy 'qrpgleref/P1154.rpgleinc'

dcl-ds theTable extname('T563') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T563 LIMIT 1;

theCharVar = 'Hello from P2091';
dsply theCharVar;
P734();
P2012();
P1154();
return;