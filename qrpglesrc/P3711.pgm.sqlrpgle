**free

ctl-opt dftactgrp(*no);

dcl-pi P3711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P2594.rpgleinc'
/copy 'qrpgleref/P789.rpgleinc'

dcl-ds theTable extname('T794') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T794 LIMIT 1;

theCharVar = 'Hello from P3711';
dsply theCharVar;
P924();
P2594();
P789();
return;