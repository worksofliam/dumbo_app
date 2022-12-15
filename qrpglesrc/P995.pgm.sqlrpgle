**free

ctl-opt dftactgrp(*no);

dcl-pi P995;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P258.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'
/copy 'qrpgleref/P826.rpgleinc'

dcl-ds T1374 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1374 FROM T1374 LIMIT 1;

theCharVar = 'Hello from P995';
dsply theCharVar;
P258();
P375();
P826();
return;