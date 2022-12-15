**free

ctl-opt dftactgrp(*no);

dcl-pi P3598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1747.rpgleinc'
/copy 'qrpgleref/P431.rpgleinc'
/copy 'qrpgleref/P2127.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P3598';
dsply theCharVar;
P1747();
P431();
P2127();
return;