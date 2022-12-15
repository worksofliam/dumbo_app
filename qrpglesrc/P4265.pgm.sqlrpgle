**free

ctl-opt dftactgrp(*no);

dcl-pi P4265;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2186.rpgleinc'
/copy 'qrpgleref/P3799.rpgleinc'
/copy 'qrpgleref/P1875.rpgleinc'

dcl-ds theTable extname('T1754') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1754 LIMIT 1;

theCharVar = 'Hello from P4265';
dsply theCharVar;
P2186();
P3799();
P1875();
return;