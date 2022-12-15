**free

ctl-opt dftactgrp(*no);

dcl-pi P1748;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1315.rpgleinc'
/copy 'qrpgleref/P1190.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T950') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T950 LIMIT 1;

theCharVar = 'Hello from P1748';
dsply theCharVar;
P1315();
P1190();
P207();
return;