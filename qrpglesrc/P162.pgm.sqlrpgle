**free

ctl-opt dftactgrp(*no);

dcl-pi P162;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P148.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T1586') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1586 LIMIT 1;

theCharVar = 'Hello from P162';
dsply theCharVar;
P117();
P148();
P109();
return;