**free

ctl-opt dftactgrp(*no);

dcl-pi P2902;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P865.rpgleinc'
/copy 'qrpgleref/P2188.rpgleinc'
/copy 'qrpgleref/P329.rpgleinc'

dcl-ds theTable extname('T1784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1784 LIMIT 1;

theCharVar = 'Hello from P2902';
dsply theCharVar;
P865();
P2188();
P329();
return;