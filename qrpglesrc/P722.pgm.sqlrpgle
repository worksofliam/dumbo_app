**free

ctl-opt dftactgrp(*no);

dcl-pi P722;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P278.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P465.rpgleinc'

dcl-ds theTable extname('T209') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T209 LIMIT 1;

theCharVar = 'Hello from P722';
dsply theCharVar;
P278();
P151();
P465();
return;