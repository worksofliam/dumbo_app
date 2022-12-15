**free

ctl-opt dftactgrp(*no);

dcl-pi P5096;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4241.rpgleinc'
/copy 'qrpgleref/P761.rpgleinc'
/copy 'qrpgleref/P4026.rpgleinc'

dcl-ds theTable extname('T1333') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1333 LIMIT 1;

theCharVar = 'Hello from P5096';
dsply theCharVar;
P4241();
P761();
P4026();
return;