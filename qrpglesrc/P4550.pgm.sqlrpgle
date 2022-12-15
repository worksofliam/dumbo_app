**free

ctl-opt dftactgrp(*no);

dcl-pi P4550;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P452.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P3881.rpgleinc'

dcl-ds theTable extname('T1671') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1671 LIMIT 1;

theCharVar = 'Hello from P4550';
dsply theCharVar;
P452();
P204();
P3881();
return;