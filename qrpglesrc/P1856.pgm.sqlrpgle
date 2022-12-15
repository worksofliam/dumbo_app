**free

ctl-opt dftactgrp(*no);

dcl-pi P1856;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P1578.rpgleinc'
/copy 'qrpgleref/P1448.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P1856';
dsply theCharVar;
P151();
P1578();
P1448();
return;