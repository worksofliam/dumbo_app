**free

ctl-opt dftactgrp(*no);

dcl-pi P2446;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2218.rpgleinc'
/copy 'qrpgleref/P1526.rpgleinc'
/copy 'qrpgleref/P719.rpgleinc'

dcl-ds theTable extname('T267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T267 LIMIT 1;

theCharVar = 'Hello from P2446';
dsply theCharVar;
P2218();
P1526();
P719();
return;