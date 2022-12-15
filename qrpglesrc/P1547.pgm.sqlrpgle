**free

ctl-opt dftactgrp(*no);

dcl-pi P1547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P590.rpgleinc'
/copy 'qrpgleref/P1137.rpgleinc'
/copy 'qrpgleref/P977.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P1547';
dsply theCharVar;
P590();
P1137();
P977();
return;