**free

ctl-opt dftactgrp(*no);

dcl-pi P338;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P37.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T8') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T8 LIMIT 1;

theCharVar = 'Hello from P338';
dsply theCharVar;
P37();
P207();
P224();
return;