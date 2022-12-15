**free

ctl-opt dftactgrp(*no);

dcl-pi P2633;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P1865.rpgleinc'
/copy 'qrpgleref/P1714.rpgleinc'

dcl-ds theTable extname('T995') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T995 LIMIT 1;

theCharVar = 'Hello from P2633';
dsply theCharVar;
P376();
P1865();
P1714();
return;