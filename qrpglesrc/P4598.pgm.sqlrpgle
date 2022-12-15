**free

ctl-opt dftactgrp(*no);

dcl-pi P4598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3293.rpgleinc'
/copy 'qrpgleref/P3289.rpgleinc'
/copy 'qrpgleref/P3336.rpgleinc'

dcl-ds theTable extname('T1010') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1010 LIMIT 1;

theCharVar = 'Hello from P4598';
dsply theCharVar;
P3293();
P3289();
P3336();
return;