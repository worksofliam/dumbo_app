**free

ctl-opt dftactgrp(*no);

dcl-pi P2878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1709.rpgleinc'
/copy 'qrpgleref/P1829.rpgleinc'
/copy 'qrpgleref/P603.rpgleinc'

dcl-ds theTable extname('T614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T614 LIMIT 1;

theCharVar = 'Hello from P2878';
dsply theCharVar;
P1709();
P1829();
P603();
return;