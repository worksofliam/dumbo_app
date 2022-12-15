**free

ctl-opt dftactgrp(*no);

dcl-pi P4561;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1354.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'
/copy 'qrpgleref/P4176.rpgleinc'

dcl-ds theTable extname('T1808') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1808 LIMIT 1;

theCharVar = 'Hello from P4561';
dsply theCharVar;
P1354();
P329();
P4176();
return;