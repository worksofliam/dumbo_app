**free

ctl-opt dftactgrp(*no);

dcl-pi P3694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2855.rpgleinc'
/copy 'qrpgleref/P3328.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds theTable extname('T420') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T420 LIMIT 1;

theCharVar = 'Hello from P3694';
dsply theCharVar;
P2855();
P3328();
P1173();
return;