**free

ctl-opt dftactgrp(*no);

dcl-pi P294;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P172.rpgleinc'
/copy 'qrpgleref/P257.rpgleinc'

dcl-ds theTable extname('T942') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T942 LIMIT 1;

theCharVar = 'Hello from P294';
dsply theCharVar;
P46();
P172();
P257();
return;