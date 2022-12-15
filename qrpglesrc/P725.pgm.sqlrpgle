**free

ctl-opt dftactgrp(*no);

dcl-pi P725;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P70.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'
/copy 'qrpgleref/P597.rpgleinc'

dcl-ds theTable extname('T186') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T186 LIMIT 1;

theCharVar = 'Hello from P725';
dsply theCharVar;
P70();
P313();
P597();
return;