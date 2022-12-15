**free

ctl-opt dftactgrp(*no);

dcl-pi P2659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P866.rpgleinc'
/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P734.rpgleinc'

dcl-ds theTable extname('T1275') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1275 LIMIT 1;

theCharVar = 'Hello from P2659';
dsply theCharVar;
P866();
P471();
P734();
return;