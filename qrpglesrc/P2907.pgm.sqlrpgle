**free

ctl-opt dftactgrp(*no);

dcl-pi P2907;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P506.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P395.rpgleinc'

dcl-ds theTable extname('T313') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T313 LIMIT 1;

theCharVar = 'Hello from P2907';
dsply theCharVar;
P506();
P477();
P395();
return;