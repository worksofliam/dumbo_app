**free

ctl-opt dftactgrp(*no);

dcl-pi P3658;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P170.rpgleinc'
/copy 'qrpgleref/P3468.rpgleinc'
/copy 'qrpgleref/P1074.rpgleinc'

dcl-ds theTable extname('T641') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T641 LIMIT 1;

theCharVar = 'Hello from P3658';
dsply theCharVar;
P170();
P3468();
P1074();
return;