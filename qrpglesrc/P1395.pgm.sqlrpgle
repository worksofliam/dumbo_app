**free

ctl-opt dftactgrp(*no);

dcl-pi P1395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P530.rpgleinc'
/copy 'qrpgleref/P726.rpgleinc'
/copy 'qrpgleref/P327.rpgleinc'

dcl-ds theTable extname('T342') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T342 LIMIT 1;

theCharVar = 'Hello from P1395';
dsply theCharVar;
P530();
P726();
P327();
return;