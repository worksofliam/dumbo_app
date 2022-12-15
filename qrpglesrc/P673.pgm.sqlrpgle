**free

ctl-opt dftactgrp(*no);

dcl-pi P673;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P436.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'

dcl-ds theTable extname('T133') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T133 LIMIT 1;

theCharVar = 'Hello from P673';
dsply theCharVar;
P650();
P436();
P188();
return;