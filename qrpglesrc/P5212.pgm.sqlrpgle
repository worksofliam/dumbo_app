**free

ctl-opt dftactgrp(*no);

dcl-pi P5212;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1256.rpgleinc'
/copy 'qrpgleref/P4325.rpgleinc'
/copy 'qrpgleref/P1996.rpgleinc'

dcl-ds theTable extname('T1046') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1046 LIMIT 1;

theCharVar = 'Hello from P5212';
dsply theCharVar;
P1256();
P4325();
P1996();
return;