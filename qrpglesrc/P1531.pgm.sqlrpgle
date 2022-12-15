**free

ctl-opt dftactgrp(*no);

dcl-pi P1531;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1313.rpgleinc'
/copy 'qrpgleref/P116.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'

dcl-ds T909 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T909 FROM T909 LIMIT 1;

theCharVar = 'Hello from P1531';
dsply theCharVar;
P1313();
P116();
P420();
return;