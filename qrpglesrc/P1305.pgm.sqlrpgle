**free

ctl-opt dftactgrp(*no);

dcl-pi P1305;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P400.rpgleinc'
/copy 'qrpgleref/P54.rpgleinc'
/copy 'qrpgleref/P709.rpgleinc'

dcl-ds theTable extname('T1163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1163 LIMIT 1;

theCharVar = 'Hello from P1305';
dsply theCharVar;
P400();
P54();
P709();
return;