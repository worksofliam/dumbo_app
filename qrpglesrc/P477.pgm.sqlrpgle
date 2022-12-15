**free

ctl-opt dftactgrp(*no);

dcl-pi P477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P143.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'
/copy 'qrpgleref/P323.rpgleinc'

dcl-ds theTable extname('T1176') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1176 LIMIT 1;

theCharVar = 'Hello from P477';
dsply theCharVar;
P143();
P133();
P323();
return;