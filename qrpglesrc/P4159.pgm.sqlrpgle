**free

ctl-opt dftactgrp(*no);

dcl-pi P4159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3375.rpgleinc'
/copy 'qrpgleref/P320.rpgleinc'
/copy 'qrpgleref/P3852.rpgleinc'

dcl-ds theTable extname('T1614') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1614 LIMIT 1;

theCharVar = 'Hello from P4159';
dsply theCharVar;
P3375();
P320();
P3852();
return;