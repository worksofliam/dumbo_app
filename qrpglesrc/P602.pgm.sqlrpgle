**free

ctl-opt dftactgrp(*no);

dcl-pi P602;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P376.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P572.rpgleinc'

dcl-ds theTable extname('T184') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T184 LIMIT 1;

theCharVar = 'Hello from P602';
dsply theCharVar;
P376();
P118();
P572();
return;