**free

ctl-opt dftactgrp(*no);

dcl-pi P1466;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P262.rpgleinc'
/copy 'qrpgleref/P1186.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T455') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T455 LIMIT 1;

theCharVar = 'Hello from P1466';
dsply theCharVar;
P262();
P1186();
P88();
return;