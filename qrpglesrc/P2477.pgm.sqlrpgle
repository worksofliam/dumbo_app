**free

ctl-opt dftactgrp(*no);

dcl-pi P2477;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P840.rpgleinc'
/copy 'qrpgleref/P2466.rpgleinc'
/copy 'qrpgleref/P739.rpgleinc'

dcl-ds theTable extname('T28') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T28 LIMIT 1;

theCharVar = 'Hello from P2477';
dsply theCharVar;
P840();
P2466();
P739();
return;