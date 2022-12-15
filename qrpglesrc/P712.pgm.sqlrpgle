**free

ctl-opt dftactgrp(*no);

dcl-pi P712;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P434.rpgleinc'
/copy 'qrpgleref/P204.rpgleinc'
/copy 'qrpgleref/P316.rpgleinc'

dcl-ds theTable extname('T199') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T199 LIMIT 1;

theCharVar = 'Hello from P712';
dsply theCharVar;
P434();
P204();
P316();
return;