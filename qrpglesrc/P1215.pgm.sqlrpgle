**free

ctl-opt dftactgrp(*no);

dcl-pi P1215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P841.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'
/copy 'qrpgleref/P817.rpgleinc'

dcl-ds theTable extname('T538') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T538 LIMIT 1;

theCharVar = 'Hello from P1215';
dsply theCharVar;
P841();
P245();
P817();
return;