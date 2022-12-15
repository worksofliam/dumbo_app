**free

ctl-opt dftactgrp(*no);

dcl-pi P482;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P104.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'
/copy 'qrpgleref/P179.rpgleinc'

dcl-ds theTable extname('T415') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T415 LIMIT 1;

theCharVar = 'Hello from P482';
dsply theCharVar;
P104();
P279();
P179();
return;