**free

ctl-opt dftactgrp(*no);

dcl-pi P2325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P440.rpgleinc'
/copy 'qrpgleref/P685.rpgleinc'
/copy 'qrpgleref/P473.rpgleinc'

dcl-ds theTable extname('T855') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T855 LIMIT 1;

theCharVar = 'Hello from P2325';
dsply theCharVar;
P440();
P685();
P473();
return;