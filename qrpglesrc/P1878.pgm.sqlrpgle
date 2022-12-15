**free

ctl-opt dftactgrp(*no);

dcl-pi P1878;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P787.rpgleinc'
/copy 'qrpgleref/P1245.rpgleinc'
/copy 'qrpgleref/P1760.rpgleinc'

dcl-ds theTable extname('T301') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T301 LIMIT 1;

theCharVar = 'Hello from P1878';
dsply theCharVar;
P787();
P1245();
P1760();
return;