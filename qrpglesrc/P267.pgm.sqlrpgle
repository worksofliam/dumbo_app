**free

ctl-opt dftactgrp(*no);

dcl-pi P267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P258.rpgleinc'

dcl-ds theTable extname('T1039') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1039 LIMIT 1;

theCharVar = 'Hello from P267';
dsply theCharVar;
P51();
P109();
P258();
return;