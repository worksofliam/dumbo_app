**free

ctl-opt dftactgrp(*no);

dcl-pi P659;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P610.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T321 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T321 FROM T321 LIMIT 1;

theCharVar = 'Hello from P659';
dsply theCharVar;
P610();
P417();
P260();
return;