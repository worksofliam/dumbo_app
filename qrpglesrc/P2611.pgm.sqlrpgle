**free

ctl-opt dftactgrp(*no);

dcl-pi P2611;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P221.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T945') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T945 LIMIT 1;

theCharVar = 'Hello from P2611';
dsply theCharVar;
P1547();
P221();
P257();
return;