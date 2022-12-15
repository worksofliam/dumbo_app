**free

ctl-opt dftactgrp(*no);

dcl-pi P375;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'
/copy 'qrpgleref/P177.rpgleinc'

dcl-ds theTable extname('T296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T296 LIMIT 1;

theCharVar = 'Hello from P375';
dsply theCharVar;
P222();
P85();
P177();
return;