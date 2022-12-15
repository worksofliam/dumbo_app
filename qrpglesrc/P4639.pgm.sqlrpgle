**free

ctl-opt dftactgrp(*no);

dcl-pi P4639;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3659.rpgleinc'
/copy 'qrpgleref/P2531.rpgleinc'
/copy 'qrpgleref/P4270.rpgleinc'

dcl-ds theTable extname('T529') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T529 LIMIT 1;

theCharVar = 'Hello from P4639';
dsply theCharVar;
P3659();
P2531();
P4270();
return;