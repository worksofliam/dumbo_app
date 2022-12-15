**free

ctl-opt dftactgrp(*no);

dcl-pi P701;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'
/copy 'qrpgleref/P161.rpgleinc'

dcl-ds theTable extname('T246') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T246 LIMIT 1;

theCharVar = 'Hello from P701';
dsply theCharVar;
P455();
P522();
P161();
return;