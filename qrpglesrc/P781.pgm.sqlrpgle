**free

ctl-opt dftactgrp(*no);

dcl-pi P781;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P561.rpgleinc'
/copy 'qrpgleref/P371.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds T149 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T149 FROM T149 LIMIT 1;

theCharVar = 'Hello from P781';
dsply theCharVar;
P561();
P371();
P334();
return;