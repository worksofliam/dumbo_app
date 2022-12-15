**free

ctl-opt dftactgrp(*no);

dcl-pi P742;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P557.rpgleinc'
/copy 'qrpgleref/P307.rpgleinc'
/copy 'qrpgleref/P559.rpgleinc'

dcl-ds T1084 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1084 FROM T1084 LIMIT 1;

theCharVar = 'Hello from P742';
dsply theCharVar;
P557();
P307();
P559();
return;