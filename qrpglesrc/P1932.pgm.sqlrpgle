**free

ctl-opt dftactgrp(*no);

dcl-pi P1932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P566.rpgleinc'
/copy 'qrpgleref/P1105.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'

dcl-ds theTable extname('T824') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T824 LIMIT 1;

theCharVar = 'Hello from P1932';
dsply theCharVar;
P566();
P1105();
P1768();
return;