**free

ctl-opt dftactgrp(*no);

dcl-pi P479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P77.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'
/copy 'qrpgleref/P85.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P479';
dsply theCharVar;
P77();
P216();
P85();
return;