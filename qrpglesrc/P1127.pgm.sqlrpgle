**free

ctl-opt dftactgrp(*no);

dcl-pi P1127;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P654.rpgleinc'
/copy 'qrpgleref/P966.rpgleinc'
/copy 'qrpgleref/P35.rpgleinc'

dcl-ds theTable extname('T69') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T69 LIMIT 1;

theCharVar = 'Hello from P1127';
dsply theCharVar;
P654();
P966();
P35();
return;