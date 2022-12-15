**free

ctl-opt dftactgrp(*no);

dcl-pi P3228;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1375.rpgleinc'
/copy 'qrpgleref/P1825.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds theTable extname('T1741') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1741 LIMIT 1;

theCharVar = 'Hello from P3228';
dsply theCharVar;
P1375();
P1825();
P874();
return;