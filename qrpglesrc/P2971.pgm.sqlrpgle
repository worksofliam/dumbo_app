**free

ctl-opt dftactgrp(*no);

dcl-pi P2971;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3.rpgleinc'
/copy 'qrpgleref/P1244.rpgleinc'
/copy 'qrpgleref/P2303.rpgleinc'

dcl-ds theTable extname('T1317') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1317 LIMIT 1;

theCharVar = 'Hello from P2971';
dsply theCharVar;
P3();
P1244();
P2303();
return;