**free

ctl-opt dftactgrp(*no);

dcl-pi P3483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P1697.rpgleinc'
/copy 'qrpgleref/P169.rpgleinc'

dcl-ds theTable extname('T452') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T452 LIMIT 1;

theCharVar = 'Hello from P3483';
dsply theCharVar;
P77();
P1697();
P169();
return;