**free

ctl-opt dftactgrp(*no);

dcl-pi P70;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P65.rpgleinc'
/copy 'qrpgleref/P58.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P70';
dsply theCharVar;
P65();
P58();
P61();
return;