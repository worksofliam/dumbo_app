**free

ctl-opt dftactgrp(*no);

dcl-pi P3839;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P178.rpgleinc'
/copy 'qrpgleref/P913.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'

dcl-ds theTable extname('T1554') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1554 LIMIT 1;

theCharVar = 'Hello from P3839';
dsply theCharVar;
P178();
P913();
P2048();
return;