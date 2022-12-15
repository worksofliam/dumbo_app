**free

ctl-opt dftactgrp(*no);

dcl-pi P2794;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2095.rpgleinc'
/copy 'qrpgleref/P1965.rpgleinc'
/copy 'qrpgleref/P1029.rpgleinc'

dcl-ds theTable extname('T449') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T449 LIMIT 1;

theCharVar = 'Hello from P2794';
dsply theCharVar;
P2095();
P1965();
P1029();
return;