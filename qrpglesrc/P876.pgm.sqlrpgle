**free

ctl-opt dftactgrp(*no);

dcl-pi P876;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P74.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P450.rpgleinc'

dcl-ds theTable extname('T278') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T278 LIMIT 1;

theCharVar = 'Hello from P876';
dsply theCharVar;
P74();
P157();
P450();
return;