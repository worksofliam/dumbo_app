**free

ctl-opt dftactgrp(*no);

dcl-pi P1826;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P647.rpgleinc'
/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P865.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P1826';
dsply theCharVar;
P647();
P598();
P865();
return;