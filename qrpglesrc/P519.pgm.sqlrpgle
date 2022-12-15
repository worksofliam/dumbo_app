**free

ctl-opt dftactgrp(*no);

dcl-pi P519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P243.rpgleinc'
/copy 'qrpgleref/P474.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T567') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T567 LIMIT 1;

theCharVar = 'Hello from P519';
dsply theCharVar;
P243();
P474();
P473();
return;