**free

ctl-opt dftactgrp(*no);

dcl-pi P420;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P35.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P238.rpgleinc'

dcl-ds T1218 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1218 FROM T1218 LIMIT 1;

theCharVar = 'Hello from P420';
dsply theCharVar;
P35();
P215();
P238();
return;