**free

ctl-opt dftactgrp(*no);

dcl-pi P2245;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P130.rpgleinc'
/copy 'qrpgleref/P2126.rpgleinc'
/copy 'qrpgleref/P1736.rpgleinc'

dcl-ds theTable extname('T479') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T479 LIMIT 1;

theCharVar = 'Hello from P2245';
dsply theCharVar;
P130();
P2126();
P1736();
return;