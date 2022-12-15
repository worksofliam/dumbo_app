**free

ctl-opt dftactgrp(*no);

dcl-pi P447;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P408.rpgleinc'
/copy 'qrpgleref/P182.rpgleinc'

dcl-ds theTable extname('T319') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T319 LIMIT 1;

theCharVar = 'Hello from P447';
dsply theCharVar;
P126();
P408();
P182();
return;