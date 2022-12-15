**free

ctl-opt dftactgrp(*no);

dcl-pi P376;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P376';
dsply theCharVar;
P324();
P164();
P101();
return;