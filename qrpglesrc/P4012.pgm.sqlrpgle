**free

ctl-opt dftactgrp(*no);

dcl-pi P4012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2129.rpgleinc'
/copy 'qrpgleref/P2212.rpgleinc'
/copy 'qrpgleref/P2814.rpgleinc'

dcl-ds theTable extname('T362') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T362 LIMIT 1;

theCharVar = 'Hello from P4012';
dsply theCharVar;
P2129();
P2212();
P2814();
return;