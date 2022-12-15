**free

ctl-opt dftactgrp(*no);

dcl-pi P3176;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P680.rpgleinc'
/copy 'qrpgleref/P2732.rpgleinc'
/copy 'qrpgleref/P225.rpgleinc'

dcl-ds theTable extname('T248') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T248 LIMIT 1;

theCharVar = 'Hello from P3176';
dsply theCharVar;
P680();
P2732();
P225();
return;