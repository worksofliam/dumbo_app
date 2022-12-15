**free

ctl-opt dftactgrp(*no);

dcl-pi P4147;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3155.rpgleinc'
/copy 'qrpgleref/P3970.rpgleinc'
/copy 'qrpgleref/P3177.rpgleinc'

dcl-ds theTable extname('T930') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T930 LIMIT 1;

theCharVar = 'Hello from P4147';
dsply theCharVar;
P3155();
P3970();
P3177();
return;