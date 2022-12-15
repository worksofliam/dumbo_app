**free

ctl-opt dftactgrp(*no);

dcl-pi P1214;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P471.rpgleinc'
/copy 'qrpgleref/P34.rpgleinc'
/copy 'qrpgleref/P998.rpgleinc'

dcl-ds theTable extname('T501') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T501 LIMIT 1;

theCharVar = 'Hello from P1214';
dsply theCharVar;
P471();
P34();
P998();
return;