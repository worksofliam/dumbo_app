**free

ctl-opt dftactgrp(*no);

dcl-pi P472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P459.rpgleinc'

dcl-ds theTable extname('T96') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T96 LIMIT 1;

theCharVar = 'Hello from P472';
dsply theCharVar;
P400();
P246();
P459();
return;