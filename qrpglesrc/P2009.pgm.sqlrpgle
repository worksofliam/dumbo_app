**free

ctl-opt dftactgrp(*no);

dcl-pi P2009;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1388.rpgleinc'
/copy 'qrpgleref/P1239.rpgleinc'
/copy 'qrpgleref/P449.rpgleinc'

dcl-ds theTable extname('T437') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T437 LIMIT 1;

theCharVar = 'Hello from P2009';
dsply theCharVar;
P1388();
P1239();
P449();
return;