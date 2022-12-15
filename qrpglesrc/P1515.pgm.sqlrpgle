**free

ctl-opt dftactgrp(*no);

dcl-pi P1515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P655.rpgleinc'
/copy 'qrpgleref/P126.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds T966 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T966 FROM T966 LIMIT 1;

theCharVar = 'Hello from P1515';
dsply theCharVar;
P655();
P126();
P933();
return;