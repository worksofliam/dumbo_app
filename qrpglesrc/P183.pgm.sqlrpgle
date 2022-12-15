**free

ctl-opt dftactgrp(*no);

dcl-pi P183;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4.rpgleinc'
/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T820') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T820 LIMIT 1;

theCharVar = 'Hello from P183';
dsply theCharVar;
P4();
P14();
P95();
return;