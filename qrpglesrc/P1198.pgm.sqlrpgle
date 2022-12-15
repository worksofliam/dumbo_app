**free

ctl-opt dftactgrp(*no);

dcl-pi P1198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P374.rpgleinc'
/copy 'qrpgleref/P695.rpgleinc'
/copy 'qrpgleref/P1091.rpgleinc'

dcl-ds theTable extname('T760') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T760 LIMIT 1;

theCharVar = 'Hello from P1198';
dsply theCharVar;
P374();
P695();
P1091();
return;