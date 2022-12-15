**free

ctl-opt dftactgrp(*no);

dcl-pi P2875;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1947.rpgleinc'
/copy 'qrpgleref/P2802.rpgleinc'
/copy 'qrpgleref/P309.rpgleinc'

dcl-ds theTable extname('T217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T217 LIMIT 1;

theCharVar = 'Hello from P2875';
dsply theCharVar;
P1947();
P2802();
P309();
return;