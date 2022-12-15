**free

ctl-opt dftactgrp(*no);

dcl-pi P2894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2579.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'
/copy 'qrpgleref/P235.rpgleinc'

dcl-ds theTable extname('T227') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T227 LIMIT 1;

theCharVar = 'Hello from P2894';
dsply theCharVar;
P2579();
P303();
P235();
return;