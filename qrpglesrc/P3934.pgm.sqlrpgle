**free

ctl-opt dftactgrp(*no);

dcl-pi P3934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3306.rpgleinc'
/copy 'qrpgleref/P2654.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'

dcl-ds theTable extname('T1336') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1336 LIMIT 1;

theCharVar = 'Hello from P3934';
dsply theCharVar;
P3306();
P2654();
P96();
return;