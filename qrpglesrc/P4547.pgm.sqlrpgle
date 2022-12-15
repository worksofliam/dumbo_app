**free

ctl-opt dftactgrp(*no);

dcl-pi P4547;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P1349.rpgleinc'

dcl-ds theTable extname('T1606') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1606 LIMIT 1;

theCharVar = 'Hello from P4547';
dsply theCharVar;
P811();
P325();
P1349();
return;