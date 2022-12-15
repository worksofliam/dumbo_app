**free

ctl-opt dftactgrp(*no);

dcl-pi P2090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2073.rpgleinc'
/copy 'qrpgleref/P1863.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P2090';
dsply theCharVar;
P2073();
P1863();
P276();
return;