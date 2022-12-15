**free

ctl-opt dftactgrp(*no);

dcl-pi P1896;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P782.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P1844.rpgleinc'

dcl-ds theTable extname('T1845') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1845 LIMIT 1;

theCharVar = 'Hello from P1896';
dsply theCharVar;
P782();
P164();
P1844();
return;