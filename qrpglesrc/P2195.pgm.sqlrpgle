**free

ctl-opt dftactgrp(*no);

dcl-pi P2195;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P653.rpgleinc'
/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'

dcl-ds theTable extname('T1557') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1557 LIMIT 1;

theCharVar = 'Hello from P2195';
dsply theCharVar;
P653();
P582();
P54();
return;