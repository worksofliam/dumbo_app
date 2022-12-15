**free

ctl-opt dftactgrp(*no);

dcl-pi P5546;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P890.rpgleinc'
/copy 'qrpgleref/P420.rpgleinc'
/copy 'qrpgleref/P79.rpgleinc'

dcl-ds T1258 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1258 FROM T1258 LIMIT 1;

theCharVar = 'Hello from P5546';
dsply theCharVar;
P890();
P420();
P79();
return;