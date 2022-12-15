**free

ctl-opt dftactgrp(*no);

dcl-pi P2657;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P516.rpgleinc'
/copy 'qrpgleref/P2043.rpgleinc'
/copy 'qrpgleref/P1672.rpgleinc'

dcl-ds theTable extname('T1771') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1771 LIMIT 1;

theCharVar = 'Hello from P2657';
dsply theCharVar;
P516();
P2043();
P1672();
return;