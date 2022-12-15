**free

ctl-opt dftactgrp(*no);

dcl-pi P5377;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1141.rpgleinc'
/copy 'qrpgleref/P3741.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds theTable extname('T868') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T868 LIMIT 1;

theCharVar = 'Hello from P5377';
dsply theCharVar;
P1141();
P3741();
P1448();
return;