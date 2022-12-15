**free

ctl-opt dftactgrp(*no);

dcl-pi P496;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P496';
dsply theCharVar;
P6();
P17();
P372();
return;