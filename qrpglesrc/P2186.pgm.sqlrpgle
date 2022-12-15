**free

ctl-opt dftactgrp(*no);

dcl-pi P2186;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1985.rpgleinc'
/copy 'qrpgleref/P1066.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'

dcl-ds theTable extname('T650') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T650 LIMIT 1;

theCharVar = 'Hello from P2186';
dsply theCharVar;
P1985();
P1066();
P616();
return;