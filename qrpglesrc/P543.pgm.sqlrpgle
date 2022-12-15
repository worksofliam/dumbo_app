**free

ctl-opt dftactgrp(*no);

dcl-pi P543;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'
/copy 'qrpgleref/P485.rpgleinc'

dcl-ds theTable extname('T39') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T39 LIMIT 1;

theCharVar = 'Hello from P543';
dsply theCharVar;
P54();
P177();
P485();
return;