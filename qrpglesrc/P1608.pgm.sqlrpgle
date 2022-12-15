**free

ctl-opt dftactgrp(*no);

dcl-pi P1608;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P289.rpgleinc'
/copy 'qrpgleref/P1596.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P1608';
dsply theCharVar;
P289();
P1596();
P559();
return;