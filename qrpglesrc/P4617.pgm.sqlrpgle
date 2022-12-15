**free

ctl-opt dftactgrp(*no);

dcl-pi P4617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1434.rpgleinc'
/copy 'qrpgleref/P978.rpgleinc'
/copy 'qrpgleref/P122.rpgleinc'

dcl-ds theTable extname('T1389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1389 LIMIT 1;

theCharVar = 'Hello from P4617';
dsply theCharVar;
P1434();
P978();
P122();
return;