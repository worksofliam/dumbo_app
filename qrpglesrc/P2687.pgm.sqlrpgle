**free

ctl-opt dftactgrp(*no);

dcl-pi P2687;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2229.rpgleinc'
/copy 'qrpgleref/P2080.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'

dcl-ds theTable extname('T146') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T146 LIMIT 1;

theCharVar = 'Hello from P2687';
dsply theCharVar;
P2229();
P2080();
P409();
return;