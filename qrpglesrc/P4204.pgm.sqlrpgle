**free

ctl-opt dftactgrp(*no);

dcl-pi P4204;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1118.rpgleinc'
/copy 'qrpgleref/P657.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T1135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1135 LIMIT 1;

theCharVar = 'Hello from P4204';
dsply theCharVar;
P1118();
P657();
P241();
return;