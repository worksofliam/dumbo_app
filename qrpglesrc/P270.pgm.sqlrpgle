**free

ctl-opt dftactgrp(*no);

dcl-pi P270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P96.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'

dcl-ds theTable extname('T99') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T99 LIMIT 1;

theCharVar = 'Hello from P270';
dsply theCharVar;
P212();
P96();
P204();
return;