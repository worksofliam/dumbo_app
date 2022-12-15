**free

ctl-opt dftactgrp(*no);

dcl-pi P1341;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P434.rpgleinc'

dcl-ds theTable extname('T1112') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1112 LIMIT 1;

theCharVar = 'Hello from P1341';
dsply theCharVar;
P226();
P1171();
P434();
return;