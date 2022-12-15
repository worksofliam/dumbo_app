**free

ctl-opt dftactgrp(*no);

dcl-pi P2787;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2708.rpgleinc'
/copy 'qrpgleref/P2461.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P2787';
dsply theCharVar;
P2708();
P2461();
P761();
return;