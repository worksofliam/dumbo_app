**free

ctl-opt dftactgrp(*no);

dcl-pi P5117;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2314.rpgleinc'
/copy 'qrpgleref/P2579.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'

dcl-ds theTable extname('T818') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T818 LIMIT 1;

theCharVar = 'Hello from P5117';
dsply theCharVar;
P2314();
P2579();
P563();
return;