**free

ctl-opt dftactgrp(*no);

dcl-pi P3503;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1171.rpgleinc'
/copy 'qrpgleref/P2567.rpgleinc'
/copy 'qrpgleref/P3185.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P3503';
dsply theCharVar;
P1171();
P2567();
P3185();
return;