**free

ctl-opt dftactgrp(*no);

dcl-pi P1159;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P946.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'
/copy 'qrpgleref/P77.rpgleinc'

dcl-ds theTable extname('T270') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T270 LIMIT 1;

theCharVar = 'Hello from P1159';
dsply theCharVar;
P946();
P811();
P77();
return;