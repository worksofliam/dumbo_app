**free

ctl-opt dftactgrp(*no);

dcl-pi P3253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2995.rpgleinc'
/copy 'qrpgleref/P899.rpgleinc'
/copy 'qrpgleref/P2077.rpgleinc'

dcl-ds theTable extname('T800') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T800 LIMIT 1;

theCharVar = 'Hello from P3253';
dsply theCharVar;
P2995();
P899();
P2077();
return;