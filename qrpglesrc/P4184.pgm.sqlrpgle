**free

ctl-opt dftactgrp(*no);

dcl-pi P4184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3881.rpgleinc'
/copy 'qrpgleref/P2083.rpgleinc'
/copy 'qrpgleref/P3012.rpgleinc'

dcl-ds theTable extname('T538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T538 LIMIT 1;

theCharVar = 'Hello from P4184';
dsply theCharVar;
P3881();
P2083();
P3012();
return;