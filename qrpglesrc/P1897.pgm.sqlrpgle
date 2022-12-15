**free

ctl-opt dftactgrp(*no);

dcl-pi P1897;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P344.rpgleinc'
/copy 'qrpgleref/P994.rpgleinc'
/copy 'qrpgleref/P1768.rpgleinc'

dcl-ds theTable extname('T637') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T637 LIMIT 1;

theCharVar = 'Hello from P1897';
dsply theCharVar;
P344();
P994();
P1768();
return;