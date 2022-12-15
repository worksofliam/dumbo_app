**free

ctl-opt dftactgrp(*no);

dcl-pi P3768;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P315.rpgleinc'
/copy 'qrpgleref/P3468.rpgleinc'
/copy 'qrpgleref/P1513.rpgleinc'

dcl-ds theTable extname('T1739') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1739 LIMIT 1;

theCharVar = 'Hello from P3768';
dsply theCharVar;
P315();
P3468();
P1513();
return;