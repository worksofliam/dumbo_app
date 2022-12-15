**free

ctl-opt dftactgrp(*no);

dcl-pi P504;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P69.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'

dcl-ds theTable extname('T268') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T268 LIMIT 1;

theCharVar = 'Hello from P504';
dsply theCharVar;
P326();
P69();
P323();
return;