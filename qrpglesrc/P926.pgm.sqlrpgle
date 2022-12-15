**free

ctl-opt dftactgrp(*no);

dcl-pi P926;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P735.rpgleinc'
/copy 'qrpgleref/P842.rpgleinc'
/copy 'qrpgleref/P874.rpgleinc'

dcl-ds theTable extname('T481') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T481 LIMIT 1;

theCharVar = 'Hello from P926';
dsply theCharVar;
P735();
P842();
P874();
return;