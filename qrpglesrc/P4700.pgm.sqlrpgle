**free

ctl-opt dftactgrp(*no);

dcl-pi P4700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2425.rpgleinc'
/copy 'qrpgleref/P3658.rpgleinc'
/copy 'qrpgleref/P2443.rpgleinc'

dcl-ds theTable extname('T1536') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1536 LIMIT 1;

theCharVar = 'Hello from P4700';
dsply theCharVar;
P2425();
P3658();
P2443();
return;