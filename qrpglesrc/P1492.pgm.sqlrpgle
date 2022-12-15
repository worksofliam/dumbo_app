**free

ctl-opt dftactgrp(*no);

dcl-pi P1492;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1466.rpgleinc'
/copy 'qrpgleref/P1157.rpgleinc'
/copy 'qrpgleref/P1277.rpgleinc'

dcl-ds theTable extname('T247') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T247 LIMIT 1;

theCharVar = 'Hello from P1492';
dsply theCharVar;
P1466();
P1157();
P1277();
return;