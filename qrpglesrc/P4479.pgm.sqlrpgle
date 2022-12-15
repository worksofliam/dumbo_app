**free

ctl-opt dftactgrp(*no);

dcl-pi P4479;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1185.rpgleinc'
/copy 'qrpgleref/P4283.rpgleinc'
/copy 'qrpgleref/P2977.rpgleinc'

dcl-ds theTable extname('T815') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T815 LIMIT 1;

theCharVar = 'Hello from P4479';
dsply theCharVar;
P1185();
P4283();
P2977();
return;