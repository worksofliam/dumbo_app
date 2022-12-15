**free

ctl-opt dftactgrp(*no);

dcl-pi P4057;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P403.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P3829.rpgleinc'

dcl-ds theTable extname('T1486') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1486 LIMIT 1;

theCharVar = 'Hello from P4057';
dsply theCharVar;
P403();
P436();
P3829();
return;