**free

ctl-opt dftactgrp(*no);

dcl-pi P295;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P220.rpgleinc'
/copy 'qrpgleref/P276.rpgleinc'
/copy 'qrpgleref/P70.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P295';
dsply theCharVar;
P220();
P276();
P70();
return;