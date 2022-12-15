**free

ctl-opt dftactgrp(*no);

dcl-pi P2220;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2055.rpgleinc'
/copy 'qrpgleref/P1785.rpgleinc'
/copy 'qrpgleref/P2086.rpgleinc'

dcl-ds theTable extname('T216') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T216 LIMIT 1;

theCharVar = 'Hello from P2220';
dsply theCharVar;
P2055();
P1785();
P2086();
return;