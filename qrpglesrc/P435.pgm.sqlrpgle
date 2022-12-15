**free

ctl-opt dftactgrp(*no);

dcl-pi P435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P216.rpgleinc'

dcl-ds theTable extname('T107') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T107 LIMIT 1;

theCharVar = 'Hello from P435';
dsply theCharVar;
P390();
P160();
P216();
return;