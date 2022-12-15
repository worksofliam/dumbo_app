**free

ctl-opt dftactgrp(*no);

dcl-pi P2606;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2507.rpgleinc'
/copy 'qrpgleref/P2014.rpgleinc'
/copy 'qrpgleref/P570.rpgleinc'

dcl-ds theTable extname('T732') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T732 LIMIT 1;

theCharVar = 'Hello from P2606';
dsply theCharVar;
P2507();
P2014();
P570();
return;