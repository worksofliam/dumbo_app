**free

ctl-opt dftactgrp(*no);

dcl-pi P3789;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3728.rpgleinc'
/copy 'qrpgleref/P2255.rpgleinc'
/copy 'qrpgleref/P255.rpgleinc'

dcl-ds theTable extname('T1471') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1471 LIMIT 1;

theCharVar = 'Hello from P3789';
dsply theCharVar;
P3728();
P2255();
P255();
return;