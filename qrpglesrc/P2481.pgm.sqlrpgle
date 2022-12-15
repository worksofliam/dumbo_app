**free

ctl-opt dftactgrp(*no);

dcl-pi P2481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P2045.rpgleinc'
/copy 'qrpgleref/P2124.rpgleinc'

dcl-ds theTable extname('T1135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1135 LIMIT 1;

theCharVar = 'Hello from P2481';
dsply theCharVar;
P501();
P2045();
P2124();
return;