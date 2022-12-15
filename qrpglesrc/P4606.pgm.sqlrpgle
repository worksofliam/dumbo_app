**free

ctl-opt dftactgrp(*no);

dcl-pi P4606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4323.rpgleinc'
/copy 'qrpgleref/P3044.rpgleinc'
/copy 'qrpgleref/P1839.rpgleinc'

dcl-ds theTable extname('T520') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T520 LIMIT 1;

theCharVar = 'Hello from P4606';
dsply theCharVar;
P4323();
P3044();
P1839();
return;