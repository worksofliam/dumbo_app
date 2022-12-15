**free

ctl-opt dftactgrp(*no);

dcl-pi P1108;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P442.rpgleinc'
/copy 'qrpgleref/P537.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P1108';
dsply theCharVar;
P442();
P537();
P439();
return;