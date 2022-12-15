**free

ctl-opt dftactgrp(*no);

dcl-pi P2533;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1482.rpgleinc'
/copy 'qrpgleref/P2416.rpgleinc'
/copy 'qrpgleref/P1173.rpgleinc'

dcl-ds theTable extname('T927') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T927 LIMIT 1;

theCharVar = 'Hello from P2533';
dsply theCharVar;
P1482();
P2416();
P1173();
return;