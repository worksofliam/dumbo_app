**free

ctl-opt dftactgrp(*no);

dcl-pi P253;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T1222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1222 LIMIT 1;

theCharVar = 'Hello from P253';
dsply theCharVar;
P58();
P73();
P177();
return;