**free

ctl-opt dftactgrp(*no);

dcl-pi P1788;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P1544.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds theTable extname('T897') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T897 LIMIT 1;

theCharVar = 'Hello from P1788';
dsply theCharVar;
P102();
P1544();
P572();
return;