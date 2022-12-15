**free

ctl-opt dftactgrp(*no);

dcl-pi P2962;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P872.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds theTable extname('T725') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T725 LIMIT 1;

theCharVar = 'Hello from P2962';
dsply theCharVar;
P872();
P447();
P306();
return;