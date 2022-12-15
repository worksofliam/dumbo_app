**free

ctl-opt dftactgrp(*no);

dcl-pi P3505;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2665.rpgleinc'
/copy 'qrpgleref/P711.rpgleinc'
/copy 'qrpgleref/P3364.rpgleinc'

dcl-ds theTable extname('T900') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T900 LIMIT 1;

theCharVar = 'Hello from P3505';
dsply theCharVar;
P2665();
P711();
P3364();
return;