**free

ctl-opt dftactgrp(*no);

dcl-pi P2952;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1257.rpgleinc'
/copy 'qrpgleref/P1139.rpgleinc'
/copy 'qrpgleref/P2211.rpgleinc'

dcl-ds theTable extname('T1689') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1689 LIMIT 1;

theCharVar = 'Hello from P2952';
dsply theCharVar;
P1257();
P1139();
P2211();
return;