**free

ctl-opt dftactgrp(*no);

dcl-pi P1098;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P81.rpgleinc'
/copy 'qrpgleref/P935.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'

dcl-ds theTable extname('T256') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T256 LIMIT 1;

theCharVar = 'Hello from P1098';
dsply theCharVar;
P81();
P935();
P818();
return;