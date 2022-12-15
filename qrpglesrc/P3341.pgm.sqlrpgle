**free

ctl-opt dftactgrp(*no);

dcl-pi P3341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3006.rpgleinc'
/copy 'qrpgleref/P683.rpgleinc'
/copy 'qrpgleref/P1923.rpgleinc'

dcl-ds theTable extname('T1315') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1315 LIMIT 1;

theCharVar = 'Hello from P3341';
dsply theCharVar;
P3006();
P683();
P1923();
return;