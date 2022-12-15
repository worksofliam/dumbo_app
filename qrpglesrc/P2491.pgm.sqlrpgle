**free

ctl-opt dftactgrp(*no);

dcl-pi P2491;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1528.rpgleinc'
/copy 'qrpgleref/P1845.rpgleinc'
/copy 'qrpgleref/P1901.rpgleinc'

dcl-ds theTable extname('T267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T267 LIMIT 1;

theCharVar = 'Hello from P2491';
dsply theCharVar;
P1528();
P1845();
P1901();
return;