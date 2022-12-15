**free

ctl-opt dftactgrp(*no);

dcl-pi P5600;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2577.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P4827.rpgleinc'

dcl-ds theTable extname('T1250') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1250 LIMIT 1;

theCharVar = 'Hello from P5600';
dsply theCharVar;
P2577();
P6();
P4827();
return;