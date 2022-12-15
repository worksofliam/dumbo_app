**free

ctl-opt dftactgrp(*no);

dcl-pi P4134;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P666.rpgleinc'
/copy 'qrpgleref/P2096.rpgleinc'
/copy 'qrpgleref/P3593.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P4134';
dsply theCharVar;
P666();
P2096();
P3593();
return;