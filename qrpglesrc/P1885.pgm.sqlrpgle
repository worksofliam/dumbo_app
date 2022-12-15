**free

ctl-opt dftactgrp(*no);

dcl-pi P1885;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P1255.rpgleinc'
/copy 'qrpgleref/P545.rpgleinc'

dcl-ds theTable extname('T1051') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1051 LIMIT 1;

theCharVar = 'Hello from P1885';
dsply theCharVar;
P266();
P1255();
P545();
return;