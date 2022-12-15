**free

ctl-opt dftactgrp(*no);

dcl-pi P3458;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P3231.rpgleinc'
/copy 'qrpgleref/P1808.rpgleinc'

dcl-ds theTable extname('T334') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T334 LIMIT 1;

theCharVar = 'Hello from P3458';
dsply theCharVar;
P45();
P3231();
P1808();
return;