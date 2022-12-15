**free

ctl-opt dftactgrp(*no);

dcl-pi P708;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P490.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'

dcl-ds theTable extname('T338') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T338 LIMIT 1;

theCharVar = 'Hello from P708';
dsply theCharVar;
P490();
P116();
P205();
return;