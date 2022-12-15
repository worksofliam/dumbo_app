**free

ctl-opt dftactgrp(*no);

dcl-pi P3693;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3151.rpgleinc'
/copy 'qrpgleref/P3348.rpgleinc'
/copy 'qrpgleref/P651.rpgleinc'

dcl-ds theTable extname('T1668') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1668 LIMIT 1;

theCharVar = 'Hello from P3693';
dsply theCharVar;
P3151();
P3348();
P651();
return;