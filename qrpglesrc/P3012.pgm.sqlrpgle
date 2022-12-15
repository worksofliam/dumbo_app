**free

ctl-opt dftactgrp(*no);

dcl-pi P3012;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P648.rpgleinc'
/copy 'qrpgleref/P455.rpgleinc'
/copy 'qrpgleref/P59.rpgleinc'

dcl-ds theTable extname('T736') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T736 LIMIT 1;

theCharVar = 'Hello from P3012';
dsply theCharVar;
P648();
P455();
P59();
return;