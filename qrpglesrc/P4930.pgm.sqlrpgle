**free

ctl-opt dftactgrp(*no);

dcl-pi P4930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1962.rpgleinc'
/copy 'qrpgleref/P3872.rpgleinc'
/copy 'qrpgleref/P4591.rpgleinc'

dcl-ds theTable extname('T394') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T394 LIMIT 1;

theCharVar = 'Hello from P4930';
dsply theCharVar;
P1962();
P3872();
P4591();
return;