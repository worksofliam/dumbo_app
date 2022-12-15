**free

ctl-opt dftactgrp(*no);

dcl-pi P3113;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1315.rpgleinc'
/copy 'qrpgleref/P3051.rpgleinc'
/copy 'qrpgleref/P1609.rpgleinc'

dcl-ds theTable extname('T858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T858 LIMIT 1;

theCharVar = 'Hello from P3113';
dsply theCharVar;
P1315();
P3051();
P1609();
return;