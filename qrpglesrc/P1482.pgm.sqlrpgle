**free

ctl-opt dftactgrp(*no);

dcl-pi P1482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P568.rpgleinc'
/copy 'qrpgleref/P668.rpgleinc'

dcl-ds theTable extname('T1300') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1300 LIMIT 1;

theCharVar = 'Hello from P1482';
dsply theCharVar;
P8();
P568();
P668();
return;