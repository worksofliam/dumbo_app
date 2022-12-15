**free

ctl-opt dftactgrp(*no);

dcl-pi P868;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P355.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'

dcl-ds T1681 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1681 FROM T1681 LIMIT 1;

theCharVar = 'Hello from P868';
dsply theCharVar;
P355();
P420();
P349();
return;