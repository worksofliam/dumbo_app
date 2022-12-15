**free

ctl-opt dftactgrp(*no);

dcl-pi P2119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2010.rpgleinc'
/copy 'qrpgleref/P808.rpgleinc'
/copy 'qrpgleref/P1289.rpgleinc'

dcl-ds theTable extname('T219') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T219 LIMIT 1;

theCharVar = 'Hello from P2119';
dsply theCharVar;
P2010();
P808();
P1289();
return;