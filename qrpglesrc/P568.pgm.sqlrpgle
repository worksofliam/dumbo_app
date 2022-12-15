**free

ctl-opt dftactgrp(*no);

dcl-pi P568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'

dcl-ds T1228 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1228 FROM T1228 LIMIT 1;

theCharVar = 'Hello from P568';
dsply theCharVar;
P146();
P371();
P366();
return;