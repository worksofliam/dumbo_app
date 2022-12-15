**free

ctl-opt dftactgrp(*no);

dcl-pi P3605;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P1249.rpgleinc'
/copy 'qrpgleref/P3104.rpgleinc'

dcl-ds theTable extname('T1052') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1052 LIMIT 1;

theCharVar = 'Hello from P3605';
dsply theCharVar;
P335();
P1249();
P3104();
return;