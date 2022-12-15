**free

ctl-opt dftactgrp(*no);

dcl-pi P2848;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1146.rpgleinc'
/copy 'qrpgleref/P846.rpgleinc'
/copy 'qrpgleref/P440.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P2848';
dsply theCharVar;
P1146();
P846();
P440();
return;