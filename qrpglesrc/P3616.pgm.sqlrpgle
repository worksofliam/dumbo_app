**free

ctl-opt dftactgrp(*no);

dcl-pi P3616;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1468.rpgleinc'
/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds theTable extname('T1870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1870 LIMIT 1;

theCharVar = 'Hello from P3616';
dsply theCharVar;
P1468();
P278();
P559();
return;