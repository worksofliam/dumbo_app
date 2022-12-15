**free

ctl-opt dftactgrp(*no);

dcl-pi P1940;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1367.rpgleinc'
/copy 'qrpgleref/P1169.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'

dcl-ds theTable extname('T1297') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1297 LIMIT 1;

theCharVar = 'Hello from P1940';
dsply theCharVar;
P1367();
P1169();
P1566();
return;