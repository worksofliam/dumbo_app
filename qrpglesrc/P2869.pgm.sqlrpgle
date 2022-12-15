**free

ctl-opt dftactgrp(*no);

dcl-pi P2869;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1024.rpgleinc'
/copy 'qrpgleref/P1261.rpgleinc'
/copy 'qrpgleref/P2813.rpgleinc'

dcl-ds theTable extname('T516') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T516 LIMIT 1;

theCharVar = 'Hello from P2869';
dsply theCharVar;
P1024();
P1261();
P2813();
return;