**free

ctl-opt dftactgrp(*no);

dcl-pi P3944;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P45.rpgleinc'
/copy 'qrpgleref/P3858.rpgleinc'

dcl-ds theTable extname('T1404') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1404 LIMIT 1;

theCharVar = 'Hello from P3944';
dsply theCharVar;
P33();
P45();
P3858();
return;