**free

ctl-opt dftactgrp(*no);

dcl-pi P953;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P464.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'
/copy 'qrpgleref/P110.rpgleinc'

dcl-ds theTable extname('T1151') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1151 LIMIT 1;

theCharVar = 'Hello from P953';
dsply theCharVar;
P464();
P709();
P110();
return;