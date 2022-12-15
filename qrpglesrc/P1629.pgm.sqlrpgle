**free

ctl-opt dftactgrp(*no);

dcl-pi P1629;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P1250.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'

dcl-ds theTable extname('T1227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1227 LIMIT 1;

theCharVar = 'Hello from P1629';
dsply theCharVar;
P1073();
P1250();
P62();
return;