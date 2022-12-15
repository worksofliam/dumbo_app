**free

ctl-opt dftactgrp(*no);

dcl-pi P1357;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P574.rpgleinc'
/copy 'qrpgleref/P896.rpgleinc'
/copy 'qrpgleref/P728.rpgleinc'

dcl-ds theTable extname('T544') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T544 LIMIT 1;

theCharVar = 'Hello from P1357';
dsply theCharVar;
P574();
P896();
P728();
return;