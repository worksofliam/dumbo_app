**free

ctl-opt dftactgrp(*no);

dcl-pi P151;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P131.rpgleinc'
/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds theTable extname('T396') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T396 LIMIT 1;

theCharVar = 'Hello from P151';
dsply theCharVar;
P131();
P78();
P40();
return;