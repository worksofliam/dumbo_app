**free

ctl-opt dftactgrp(*no);

dcl-pi P4450;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3743.rpgleinc'
/copy 'qrpgleref/P2048.rpgleinc'
/copy 'qrpgleref/P752.rpgleinc'

dcl-ds theTable extname('T222') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T222 LIMIT 1;

theCharVar = 'Hello from P4450';
dsply theCharVar;
P3743();
P2048();
P752();
return;