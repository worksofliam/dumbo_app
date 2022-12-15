**free

ctl-opt dftactgrp(*no);

dcl-pi P5000;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P575.rpgleinc'
/copy 'qrpgleref/P4812.rpgleinc'
/copy 'qrpgleref/P2953.rpgleinc'

dcl-ds theTable extname('T375') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T375 LIMIT 1;

theCharVar = 'Hello from P5000';
dsply theCharVar;
P575();
P4812();
P2953();
return;