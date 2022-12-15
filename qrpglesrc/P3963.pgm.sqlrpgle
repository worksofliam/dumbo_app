**free

ctl-opt dftactgrp(*no);

dcl-pi P3963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1350.rpgleinc'
/copy 'qrpgleref/P2258.rpgleinc'
/copy 'qrpgleref/P1490.rpgleinc'

dcl-ds theTable extname('T393') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T393 LIMIT 1;

theCharVar = 'Hello from P3963';
dsply theCharVar;
P1350();
P2258();
P1490();
return;