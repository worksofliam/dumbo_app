**free

ctl-opt dftactgrp(*no);

dcl-pi P3069;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P764.rpgleinc'
/copy 'qrpgleref/P1877.rpgleinc'
/copy 'qrpgleref/P2869.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P3069';
dsply theCharVar;
P764();
P1877();
P2869();
return;